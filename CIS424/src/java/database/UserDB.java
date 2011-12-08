package database;

import java.sql.*;
import business.*;
import java.util.Date;
import java.text.*;

public class UserDB
{
    public static int insertMember(Member member)
    {
        DateFormat dateFormat = new SimpleDateFormat("mm/dd/yyyy hh:mm:ss");
        String creationDate = dateFormat.format(new Date());
        int StateID = -1;
        
        if (member.getState() != null || !member.getState().equals("") || !member.getState().equals("NULL"))
            StateID = StateDB.selectID(member.getState()); //Get StateID from STATE_T
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query =
                "insert into `cis424`.`USER_T` (UserTypeID, FirstName, LastName, LastNameOnDegree, " + 
                "Gender, About, ProfessionalSkills, Employer, Position, Street, " +
                "City, StateID, Zip, WorkWebsite, Website, LookingForJob, Email, HomePhone, CellPhone, " +
                "Password, CreationDate)" +
                "values (?, ?, ?, ?, ?, " +
                "?, ?, ?, ?, ?, ?, ?, ?, " +
                "?, ?, ?, ?, ?, ?, ?, ?)";
        
        try
        {     
            ps = connection.prepareStatement(query);
            ps.setInt(1, 1);
            ps.setString(2, member.getFirstName());
            ps.setString(3, member.getLastName());
            ps.setString(4, member.getLastNameOnDegree());
            ps.setString(5, member.getGender());
            ps.setString(6, member.getAbout());
            ps.setString(7, member.getProfessionalSkills());
            ps.setString(8, member.getEmployer());
            ps.setString(9, member.getPosition());
            ps.setString(10, member.getStreet());
            ps.setString(11, member.getCity());
            if (StateID == -1)
                ps.setString(12, null);
            else
                ps.setInt(12, StateID);
            ps.setString(13, member.getZip());
            ps.setString(14, member.getWorkWebsite());
            ps.setString(15, member.getWebsite());
            ps.setBoolean(16, member.getLookingForJob());
            ps.setString(17, member.getEmail());
            ps.setString(18, member.getHomePhone());
            ps.setString(19, member.getCellPhone());
            ps.setString(20, member.getPassword());
            ps.setString(21, creationDate);
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error inserting user: " + e.getLocalizedMessage());
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int update(User user)
    {   
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
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
            ps = connection.prepareStatement(query);
            
            if (user.getClass().isAssignableFrom(Member.class))
            {
                Member member = (Member)user;
                
                int StateID = StateDB.selectID(member.getState()); //Get StateID from STATE_T
                
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
            }
            else if (user.getClass().isAssignableFrom(Admin.class))
            {
                Admin admin = (Admin)user;
                
                ps.setString(1, admin.getFirstName());
                ps.setString(2, admin.getLastName());
                ps.setString(3, "NULL");
                ps.setString(4, "NULL");
                ps.setString(5, "NULL");
                ps.setString(6, "NULL");
                ps.setString(7, "NULL");
                ps.setString(8, "NULL");
                ps.setString(9, "NULL");
                ps.setString(10, "NULL");
                ps.setString(11, "NULL");
                ps.setString(12, "NULL");
                ps.setString(13, "NULL");
                ps.setString(14, "NULL");
                ps.setString(15, "NULL");
                ps.setString(16, admin.getEmail());
                ps.setString(17, "NULL");
                ps.setString(18, "NULL");
                ps.setString(19, admin.getPassword());
                ps.setString(20, admin.getEmail());
            }
            else
                return 0;
            
            return ps.executeUpdate();
        }
        catch (SQLException e)
        {
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static boolean emailExists(String email)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
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
            pool.freeConnection(connection);
        }
    }
    
    public static String selectPassword(String email)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = "select Password from `cis424`.`USER_T` " +
                "where email = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            rs.next();
            String password = rs.getString("Password");
            return password;
        }
        catch(SQLException e)
        {
            System.out.println("Error finding password: " + e.getLocalizedMessage());
            return null;
        }
        finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int selectID(User user)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
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
            pool.freeConnection(connection);
        }
    }
    
    public static User select(String email)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = "select * from `cis424`.`USER_T` " +
                       "where Email = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next())
            {
                if (rs.getInt("ID") == 1)
                {
                    Member member = new Member();
                    
                    member.setFirstName(rs.getString("FirstName"));
                    member.setLastName(rs.getString("LastName"));
                    member.setLastNameOnDegree(rs.getString("LastNameOnDegree"));
                    member.setGender(rs.getString("Gender"));
                    member.setAbout(rs.getString("About"));
                    member.setProfessionalSkills(rs.getString("ProfessionalSkills"));
                    member.setEmployer(rs.getString("Employer"));
                    member.setPostition(rs.getString("Position"));
                    member.setStreet(rs.getString("Street"));
                    member.setCity(rs.getString("City"));
                    member.setState(rs.getString("StateID"));
                    member.setZip(rs.getString("Zip"));
                    member.setWorkWebsite(rs.getString("WorkWebsite"));
                    member.setWebsite(rs.getString("Website"));
                    member.setLookingForJob(rs.getBoolean("LookingForJob"));
                    member.setEmail(rs.getString("Email"));
                    member.setHomePhone(rs.getString("HomePhone"));
                    member.setCellPhone(rs.getString("CellPhone"));
                    member.setPassword(rs.getString("Password"));
                    member.setCreationDateWithString(rs.getString("CreationDate"));
                    member.setEducation(EducationDB.select(member)); //Get education list from EducationDB
                    
                    user = member;
                }
                else
                {
                    Admin admin = new Admin();
                    
                    admin.setFirstName(rs.getString("FirstName"));
                    admin.setLastName(rs.getString("LastName"));
                    admin.setEmail(rs.getString("Email"));
                    admin.setPassword(rs.getString("Password"));
                    admin.setCreationDateWithDate(rs.getDate("CreationDate"));
                    
                    user = admin;
                }
            }
            return user;
        }
        catch (SQLException e)
        {
            System.out.println("Error selecting user: " + e.getLocalizedMessage());
            return null;
        }        
        finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}