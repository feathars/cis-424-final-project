package business;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable
{
    private int ID;
    private String firstName;
    private String lastName;
    private String email;
    private String creationDate;
    
    public User()
    {
        ID = 0;
        firstName = "";
        lastName = "";
        email = "";
        creationDate = "";
    }
    
    public int getID()
    {
        return ID;
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
}
