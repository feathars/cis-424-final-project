package database;

import java.sql.*;
import business.User;

public class UserDB
{
    public static int insert(User user, Connection connection)
    {
        String query = 
                "INSERT INTO User (FirstName, LastName, EmailAddress, CompanyName, " + 
                "Address1, Address2, City, State, Zip, Country, " +
                "CreditCardType, CreditCardNumber, CreditCardExpirationDate) " +
                "VALUES (?, ?, ?, ?, " +
                "?, ?, ?, ?, ?, ?, " +
                "?, ?, ?)";
        try
        {        
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, "");
            ps.setString(4, "Shawn");
            ps.setString(5, "Shawn");
            ps.setString(6, "Shawn");
            ps.setString(7, "Shawn");
            ps.setString(8, "Shawn");
            ps.setString(9, "Shawn");
            ps.setString(10, "Shawn");
            ps.setString(11, "Shawn");
            ps.setString(12, "Shawn");
            ps.setString(13, "Shawn");
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return 0;
        }
    }
}