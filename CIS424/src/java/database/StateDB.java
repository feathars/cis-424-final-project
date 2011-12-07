package database;

import java.sql.*;
import java.util.ArrayList;

public class StateDB
{
    public static int selectID(String state)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select ID from `cis424`.`STATE_T` " +
                "where StateAbr = ? " +
                "OR State = ?";
        try
        {        
            ps = connection.prepareStatement(query);
            ps.setString(1, state);
            ps.setString(2, state);
            rs = ps.executeQuery();
            int ID = rs.getInt("ID");
            return ID;
        }
        catch(SQLException e)
        {
            return -1;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
    
    public static ArrayList<String> selectAllStatesAbr()
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select StateAbr from `cis424`.`STATE_T` order by State";
        try
        {        
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            ArrayList<String> states = new ArrayList<String>();
            
            while (rs.next())
            {
                String state = rs.getString("StateAbr");
                states.add(state);
            }
            
            return states;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting states: " + e.getLocalizedMessage());
            return null;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
    
    public static ArrayList<String> selectAllStatesFullNames()
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select State from `cis424`.`STATE_T` order by State";
        try
        {        
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            ArrayList<String> states = new ArrayList<String>();
            
            while (rs.next())
            {
                String state = rs.getString("State");
                states.add(state);
            }
            
            return states;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting states: " + e.getLocalizedMessage());
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