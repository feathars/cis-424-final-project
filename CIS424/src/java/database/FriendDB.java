package database;

import java.sql.*;
import business.User;
import java.util.Date;
import java.util.ArrayList;
import java.text.*;

public class FriendDB
{
    public static int insert(User user, User friend)
    {
        int userID = UserDB.selectID(user);
        int friendID = UserDB.selectID(friend);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "START TRANSACTION;" +
                    "SET autocommit = 0; " +
                    "insert into `cis424`.`FRIEND_T` (UserID, FriendID) values (?, ?);" +
                    "insert into `cis424`.`FRIEND_T` (UserID, FriendID) values (?, ?);" +
                    "COMMIT;" +
                    "SET autocommit = 1;";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, friendID);
            ps.setInt(3, friendID);
            ps.setInt(4, userID);
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error inserting friend: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int delete(User user, User friend)
    {
        int userID = UserDB.selectID(user);
        int friendID = UserDB.selectID(friend);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "delete from `cis424`.`FRIEND_T` " +
                    "where (UserID = ? AND" +
                    "FriendID = ?) OR" +
                    "(FriendID = ? AND" +
                    "UserID = ?)";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, friendID);
            ps.setInt(3, userID);
            ps.setInt(4, friendID);
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error deleting friend: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static ArrayList<Integer> select(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select FriendID from `cis424`.`FRIEND_T` " +
                "where UserID = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<Integer> friends = new ArrayList<Integer>();
            
            while(rs.next())
            {
                friends.add(rs.getInt("FriendID"));
            }
            
            return friends;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting request: " + e.getLocalizedMessage());
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