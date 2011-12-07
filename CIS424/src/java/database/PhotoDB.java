package database;

import java.sql.*;
import business.*;
import java.util.ArrayList;

public class PhotoDB
{
    public static int insert(User user, Photo photo)
    {
        int UserID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "START TRANSACTION; " +
                    "SET autocommit = 0; " +
                    "insert into `cis424`.`PHOTO_T` (ID) values (?); " +
                    "insert into `cis424`.`USER_PHOTO_T` (UserID, PhotoID) values (?, (select last_insert_id())); " +
                    "COMMIT;" +
                    "SET autocommit = 1;";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, photo.getURL());
            ps.setInt(2, UserID);
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error inserting photo: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int delete(Photo photo)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "delete from `cis424`.`PHOTO_T` " +
                    "where ID = ?";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, photo.getID());
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error deleting photo: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int update(Photo photo)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "update `cis424`.`PHOTO_T` set " +
                    "URL = ?" +
                    "where ID = ?";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, photo.getURL());
            ps.setInt(2, photo.getID());
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error deleting photo: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static ArrayList<Photo> select(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select ID, URL from `cis424`.`PHOTO_T` photo, " +
                "`cis424`.`USER_PHOTO_T` userPhoto " +
                "where photo.ID = userPhoto.PhotoID AND " +
                "userPhoto.UserID = ?";
        try
        {        
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<Photo> photos = new ArrayList<Photo>();
            
            while(rs.next())
            {
                Photo photo = new Photo();
                
                photo.setID(rs.getInt("ID"));
                photo.setURL(rs.getString("URL"));
                
                photos.add(photo);
            }
            
            return photos;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting photos: " + e.getLocalizedMessage());
            return null;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
}