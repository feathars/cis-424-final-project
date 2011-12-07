package database;

import java.sql.*;
import business.User;
import java.util.Date;
import java.util.ArrayList;
import java.text.*;

public class RequestDB
{
    public static int insert(User receivingUser, User sendingUser)
    {
        int receivingUserID = UserDB.selectID(receivingUser);
        int sendingUserID = UserDB.selectID(sendingUser);
        
        DateFormat dateFormat = new SimpleDateFormat("mm/dd/yyyy hh:mm:ss");
        String requestDate = dateFormat.format(new Date());
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "insert into `cis424`.`REQUEST_T` (ReceivingUserID, SendingUserID, Date) " +
                "values (?, ?, ?); ";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, receivingUserID);
            ps.setInt(2, sendingUserID);
            ps.setString(3, requestDate);
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error inserting request: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int delete(User receivingUser, User sendingUser)
    {
        int receivingUserID = UserDB.selectID(receivingUser);
        int sendingUserID = UserDB.selectID(sendingUser);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "delete from `cis424`.`REQUEST_T` " +
                    "where ReceivingUserID = ? AND" +
                    "SendingUserID = ?";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, receivingUserID);
            ps.setInt(2, sendingUserID);
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error deleting request: " + e.getLocalizedMessage());
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
                "select SendingUserID from `cis424`.`REQUEST_T` " +
                "where ReceivingUserID = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<Integer> requests = new ArrayList<Integer>();
            
            while(rs.next())
            {
                requests.add(rs.getInt("SendingUserID"));
            }
            
            return requests;
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
    
    public static int selectRequestCount(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select count(SendingUserID) as 'Requests' " +
                "from REQUEST_T reqeust, USER_T user " +
                "where ReceivingUserID = user.ID " +
                "and ReceivingUserID = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<Integer> requests = new ArrayList<Integer>();
            
            int requestCount = rs.getInt("Requests");
            
            return requestCount;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting request count: " + e.getLocalizedMessage());
            return -1;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
}