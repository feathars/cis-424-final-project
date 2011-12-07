package database;

import java.sql.*;

public class StateDB
{
    public static int selectID(String state, Connection connection)
    {
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select ID from `cis424`.`STATE_T` " +
                "where StateAbr = ? " +
                "OR State = ?";
        try
        {        
            connection.prepareStatement(query);
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
        }
    }
}