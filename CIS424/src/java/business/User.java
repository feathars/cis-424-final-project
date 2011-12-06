package business;

import java.io.Serializable;
import java.text.*;
import java.util.Date;

public class User implements Serializable
{
    private String firstName;
    private String lastName;
    private String email;
    private String creationDate;
    
    public User()
    {
        firstName = "";
        lastName = "";
        email = "";
        creationDate = "";
    }
    
    public void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public String getFirstName()
    {
        return firstName;
    }
    
    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public String getLastName()
    {
        return lastName;
    }
    
    public void setEmailAddress(String email)
    {
        this.email = email;
    }
    
    public String getEmailAddress()
    {
        return email;
    }
    
    public String getCreationDateAsString()
    {
        return creationDate;
    }
    
    public Date getCreationDateAsDate(String dateFormat)
    {
        DateFormat format = new SimpleDateFormat(dateFormat);
        Date date = new Date();
        
        try {
            date = format.parse(creationDate);
        } catch (ParseException ex) {
            System.out.println("Error parsing creation date.");
        }
        
        return date;
    }
}
