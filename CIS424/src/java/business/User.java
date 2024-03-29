package business;

import java.io.Serializable;
import java.text.*;
import java.util.Date;

public class User implements Serializable
{
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String creationDate;
    
    public User()
    {
        firstName = "";
        lastName = "";
        email = "";
        password = "";
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
    
    public void setEmail(String email)
    {
        this.email = email;
    }
    
    public String getEmail()
    {
        return email;
    }
    
    public void setPassword(String password)
    {
        this.password = password;
    }
    
    public String getPassword()
    {
        return password;
    }
    
    public void setCreationDateWithString(String creationDate)
    {
        this.creationDate = creationDate;
    }
    
    public void setCreationDateWithDate(Date creationDate)
    {
        DateFormat dateFormat = new SimpleDateFormat("mm/dd/yyyy hh:mm:ss");
        this.creationDate = dateFormat.format(creationDate);
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
