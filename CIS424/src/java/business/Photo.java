package business;

import java.io.Serializable;

public class Photo implements Serializable
{
    private int ID;
    private String URL;
    
    public Photo()
    {
        ID = 0;
        URL = "";
    }
    
    public void setID(int ID)
    {
        this.ID = ID;
    }
    
    public int getID()
    {
        return ID;
    }
    
    public void setURL(String URL)
    {
        this.URL = URL;
    }
    
    public String getURL()
    {
        return URL;
    }
}
