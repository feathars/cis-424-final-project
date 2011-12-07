package database;

import java.sql.*;

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
}