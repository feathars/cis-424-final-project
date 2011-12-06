package business;

import java.io.Serializable;

public class Education implements Serializable
{
    private String institution;
    private String degree;
    private String major;
    private String gradYear;
    
    public Education()
    {
        institution = "";
        degree = "";
        major = "";
        gradYear = "";
    }
    
    public void setInstitution(String institution)
    {
        this.institution = institution;
    }
    
    public String getInstitution()
    {
        return institution;
    }
    
    public void setDegree(String degree)
    {
        this.degree = degree;
    }
    
    public String getDegree()
    {
        return degree;
    }
    
    public void setMajor(String major)
    {
        this.major = major;
    }
    
    public String getMajor()
    {
        return major;
    }
    
    public void setGradYear(String gradYear)
    {
        this.gradYear = gradYear;
    }
    
    public String getGradYear()
    {
        return gradYear;
    }
}
