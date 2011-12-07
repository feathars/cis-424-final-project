package database;

import java.sql.*;
import business.*;
import java.util.ArrayList;

public class EducationDB
{
    public static int insert(User user, Education education)
    {
        int UserID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "START TRANSACTION; " +
                    "SET autocommit = 0; " +
                    "insert into `cis424`.`EDUCATION_T` (Institution, Degree, Major, GradYear) values (?, ?, ?, ?); " +
                    "insert into `cis424`.`USER_EDUCATION_T` (UserID, EducationID) values (?, (select last_insert_id())); " +
                    "COMMIT;" +
                    "SET autocommit = 1;";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, education.getInstitution());
            ps.setString(2, education.getDegree());
            ps.setString(3, education.getMajor());
            ps.setString(4, education.getGradYear());
            ps.setInt(5, UserID);
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error inserting education: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int delete(Education education)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "delete from `cis424`.`EDUCATION_T` " +
                    "where ID = ?";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, education.getID());
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error deleting education: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int update(Education education)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "update `cis424`.`EDUCATION_T` set " +
                    "Institution = ?, " +
                    "Degree = ?, " +
                    "Major = ?, " +
                    "GradYear = ?, " +
                    "where ID = ?";
        
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, education.getInstitution());
            ps.setString(2, education.getDegree());
            ps.setString(3, education.getMajor());
            ps.setString(4, education.getGradYear());
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error updating education: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static ArrayList<Education> select(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select ID, Institution, Degree, Major, GradYear " +
                "from `cis424`.`EDUCATION_T` education, " +
                "`cis424`.`USER_EDUCATION_T` userEducation " +
                "where education.ID = userEducation.EducationID AND " +
                "userEducation.UserID = ?;";
        try
        {        
            connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<Education> educationList = new ArrayList<Education>();
            
            while(rs.next())
            {
                Education education = new Education();
                
                education.setID(rs.getInt("ID"));
                education.setInstitution(rs.getString("Institution"));
                education.setDegree(rs.getString("Degree"));
                education.setMajor(rs.getString("Major"));
                education.setGradYear(rs.getString("GradYear"));
                
                educationList.add(education);
            }
            
            return educationList;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting education: " + e.getLocalizedMessage());
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