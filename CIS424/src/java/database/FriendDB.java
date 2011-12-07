package database;

import business.Member;
import java.sql.*;
import business.User;
import java.util.ArrayList;

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
    
    public static ArrayList<User> selectFriendsList(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select ID, FirstName as 'First Name', LastName as 'Last Name' " +
                "from USER_T user " +
                "where user.ID " +
                "in " +
                "(select FriendID " +
                "from FRIEND_T friend " +
                "where friend.UserID = ?)";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            ArrayList<User> friends = new ArrayList<User>();
            
            while(rs.next())
            {
                Member friend = new Member();
                
                friend.setFirstName(rs.getString("FirstName"));
                friend.setLastName(rs.getString("LastName"));
                friend.setLastNameOnDegree(rs.getString("LastNameOnDegree"));
                friend.setGender(rs.getString("Gender"));
                friend.setAbout(rs.getString("About"));
                friend.setProfessionalSkills(rs.getString("ProfessionalSkills"));
                friend.setEmployer(rs.getString("Employer"));
                friend.setPostition(rs.getString("Position"));
                friend.setStreet(rs.getString("Street"));
                friend.setCity(rs.getString("City"));
                friend.setState(rs.getString("StateID"));
                friend.setZip(rs.getString("Zip"));
                friend.setWorkWebsite(rs.getString("WorkWebsite"));
                friend.setWebsite(rs.getString("Website"));
                friend.setLookingForJob(rs.getBoolean("LookingForJob"));
                friend.setEmail(rs.getString("Email"));
                friend.setHomePhone(rs.getString("HomePhone"));
                friend.setCellPhone(rs.getString("CellPhone"));
                friend.setPassword(rs.getString("Password"));
                friend.setCreationDateWithString(rs.getString("CreationDate"));
                friend.setEducation(EducationDB.select(friend)); //Get education list from EducationDB
                
                friends.add(friend);
            }
            
            return friends;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting friends list: " + e.getLocalizedMessage());
            return null;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
    
    public static int selectFriendCount(User user)
    {
        int userID = UserDB.selectID(user);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select count(FriendID) as 'Friend Count' " +
                "from FRIEND_T friend, USER_T user " +
                "where friend.UserID = user.ID " +
                "and friend.UserID = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            
            int friendCount = rs.getInt("Friend Count");
            
            return friendCount;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting friend count: " + e.getLocalizedMessage());
            return -1;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
    
    /*
    public static User selectFriend(String friendEmai)
    {
        int userID = UserDB.selectID(user);
        int friendID = UserDB.selectID(friend);
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = 
                "select ID, FirstName as 'First Name', LastName as 'Last Name' " +
                "from USER_T user " +
                "where user.ID " +
                "in " +
                "(select FriendID " +
                "from FRIEND_T friend " +
                "where friend.UserID = ? AND friend.friendID = ?)";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, friendID);
            rs = ps.executeQuery();
            
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
            
            return member;
        }
        catch(SQLException e)
        {
            System.out.println("Error selecting friend: " + e.getLocalizedMessage());
            return null;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
    }
    */
}