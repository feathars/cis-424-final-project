package database;

import java.sql.*;
import business.User;
import java.util.ArrayList;

public class PhotoDB
{
    public static int insert(User user, String photoURL)
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
            ps.setString(1, photoURL);
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
    
    public static int delete(String photoURL)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "delete from `cis424`.`PHOTO_T` " +
                    "where PhotoURL = ?";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, photoURL);
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
    
    public static ArrayList<String> select(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select PhotoURL from `cis424`.`PHOTO_T` photo, " +
                "`cis424`.`USER_PHOTO_T` userPhoto " +
                "where photo.ID = userPhoto.PhotoID AND " +
                "userPhoto.UserID = ?";
        try
        {        
            connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<String> photos = new ArrayList<String>();
            
            while(rs.next())
            {
                photos.add(rs.getString("PhotoURL"));
            }
            
            return photos;
        }
        catch(SQLException e)
        {
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