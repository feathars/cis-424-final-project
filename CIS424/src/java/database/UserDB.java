package database;

import java.sql.*;
import business.*;
import java.util.Date;
import java.text.*;

public class UserDB
{
    public static int insertMember(Member member, Connection connection)
    {
        DateFormat dateFormat = new SimpleDateFormat("mm/dd/yyyy hh:mm:ss");
        String creationDate = dateFormat.format(new Date());
        int StateID = StateDB.selectID(member.getState(), connection); //Get StateID from STATE_T
        
        PreparedStatement ps = null;
        
        String query = 
                "insert into `cis424`.`USER_T` (UserTypeID, FirstName, LastName, LastNameOnDegree, " + 
                "Gender, About, ProfessionalSkills, Employer, Position, Street, " +
                "City, StateID, Zip, WorkWebsite, Website, LookingForJob, HomePhone, CellPhone, " +
                "Password, CreationDate)" +
                "values (1, ?, ?, ?, ?, " +
                "?, ?, ?, ?, ?, ?, ?, ?, " +
                "?, ?, ?, ?, ?, ?, ?, ?)";
        
        try
        {     
            connection.prepareStatement(query);
            ps.setString(1, member.getFirstName());
            ps.setString(2, member.getLastName());
            ps.setString(3, member.getLastNameOnDegree());
            ps.setString(4, member.getGender());
            ps.setString(5, member.getAbout());
            ps.setString(6, member.getProfessionalSkills());
            ps.setString(7, member.getEmployer());
            ps.setString(8, member.getPosition());
            ps.setString(9, member.getStreet());
            ps.setString(10, member.getCity());
            ps.setInt(11, StateID);
            ps.setString(12, member.getZip());
            ps.setString(13, member.getWorkWebsite());
            ps.setString(14, member.getWebsite());
            ps.setBoolean(15, member.getLookingForJob());
            ps.setString(16, member.getEmail());
            ps.setString(17, member.getHomePhone());
            ps.setString(18, member.getCellPhone());
            ps.setString(19, member.getPassword());
            ps.setString(20, creationDate);
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
        }
    }
    
    public static int updateMember(Member member, Connection connection)
    {
        int StateID = StateDB.selectID(member.getState(), connection); //Get StateID from STATE_T
        PreparedStatement ps = null;
        
        String query = "update `cis424`.`USER_T` set " +
                "FirstName = ?, " +
                "LastName = ?, " +
                "LastNameOnDegree = ?, " +
                "Gender = ?, " +
                "About = ?, " +
                "ProfessionalSkills = ?, " +
                "Employer = ?, " +
                "Position = ?, " +
                "Street = ?, " +
                "City = ?, " +
                "StateID = ?" +
                "Zip = ?, " +
                "WorkWebsite = ?, " +
                "Website = ?, " +
                "LookingForJob = ?,  " +
                "Email = ?, " +
                "HomePhone = ?, " +
                "CallPhone = ?, " +
                "Password = ? " +
                "where Email = ?";
        
        try
        {
            connection.prepareStatement(query);
            ps.setString(1, member.getFirstName());
            ps.setString(2, member.getLastName());
            ps.setString(3, member.getLastNameOnDegree());
            ps.setString(4, member.getGender());
            ps.setString(5, member.getAbout());
            ps.setString(6, member.getProfessionalSkills());
            ps.setString(7, member.getEmployer());
            ps.setString(8, member.getPosition());
            ps.setString(9, member.getStreet());
            ps.setString(10, member.getCity());
            ps.setInt(11, StateID);
            ps.setString(12, member.getZip());
            ps.setString(13, member.getWorkWebsite());
            ps.setString(14, member.getWebsite());
            ps.setBoolean(15, member.getLookingForJob());
            ps.setString(16, member.getEmail());
            ps.setString(17, member.getHomePhone());
            ps.setString(18, member.getCellPhone());
            ps.setString(19, member.getPassword());
            ps.setString(20, member.getEmail());
            
            return ps.executeUpdate();
        }
        catch (SQLException e)
        {
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
        }
    }
    
    public static boolean emailExists(String email, Connection connection)
    {
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = "select Email from `cis424`.`USER_T` " +
                "where email = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        }
        catch(SQLException e)
        {
            System.out.println("Error finding email address.");
            return false;
        }
        finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
        }
    }
    
    public static int selectID(User user, Connection connection)
    {
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        //This method returns 0 if invoiceID isn't found.
        String query = "select ID from `cis424`.`USER_T` " +
                "where Email = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getEmail());
            rs = ps.executeQuery();
            if (rs.next())
                return rs.getInt("ID");
            else
                return -1;
        }
        catch (SQLException e)
        {
            return -1;
        }
        finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
        }
    }
    
    //This method returns null if a record isn't found.
    public static User selectUser(String email, Connection connection)
    {
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = "SELECT * FROM User " +
                       "WHERE EmailAddress = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next())
            {
                user = new User();
                
            }
            return user;
        }
        catch (SQLException e){
            e.printStackTrace();
            return null;
        }        
        finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
        }
    }
}