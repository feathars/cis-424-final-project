package business;

import java.io.Serializable;
import business.User;
import java.util.Date;
import java.lang.*;

public class Member extends User implements Serializable
{
    private String lastNameOnDiploma;
    private String gender;
    private String about;
    private String professionalSkills;
    private String employer;
    private String position;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String workWebsite;
    private String website;
    private boolean lookingForJob;
    private String homePhone;
    private String cellPhone;
    
    public Member()
    {
        super();
        lastNameOnDiploma = "";
        gender = "";
        about = "";
        professionalSkills = "";
        employer = "";
        position = "";
        street = "";
        city = "";
        state = "";
        zip = "";
        workWebsite = "";
        website = "";
        lookingForJob = false;
        homePhone = "";
        cellPhone = "";
    }
    
    public void setLastNameOnDiploma(String lastNameOnDiploma)
    {
        this.lastNameOnDiploma = lastNameOnDiploma;
    }
    
    public String getLastNameOnDiploma()
    {
        return lastNameOnDiploma;
    }
    
    public void setGender(String gender)
    {
        this.gender = gender;
    }
    
    public String getGender()
    {
        return gender;
    }
    
    public void setAbout(String about)
    {
        this.about = about;
    }
    
    public String getAbout()
    {
        return about;
    }
    
    public void setProfessionalSkills(String professionalSkills)
    {
        this.professionalSkills = professionalSkills;
    }
    
    public String getProfessionalSkills()
    {
        return professionalSkills;
    }
    
    public void setEmployer(String employer)
    {
        this.employer = employer;
    }
    
    public String getEmployer()
    {
        return employer;
    }
    
    public void setPostition(String position)
    {
        this.position = position;
    }
    
    public String getPosition()
    {
        return position;
    }
    
    public void setStreet(String street)
    {
        this.street = street;
    }

    public String getStreet()
    {
        return street;
    }
    
    public void setCity(String city)
    {
        this.city = city;
    }
    
    public String getCity()
    {
        return city;
    }
    
    public void setState(String state)
    {
        this.state = state;
    }
    
    public String getState()
    {
        return state;
    }
    
    public void setZip(String zip)
    {
        this.zip = zip;
    }
    
    public String getZip()
    {
        return zip;
    }
    
    public void setWorkWebsite(String workWebsite)
    {
        this.workWebsite = workWebsite;
    }
    
    public String getWorkWebsite()
    {
        return workWebsite;
    }
    
    public void setWebsite(String website)
    {
        this.website = website;
    }
    
    public String getWebsite()
    {
        return website;
    }
    
    public void setLookingForJob(boolean lookingForJob)
    {
        this.lookingForJob = lookingForJob;
    }
    
    public boolean getLookingForJob()
    {
        return lookingForJob;
    }
    
    public void setHomePhone(String homePhone)
    {
        this.homePhone = homePhone;
    }
    
    public String getHomePhone()
    {
        return homePhone;
    }
    
    public void setCellPhone(String cellPhone)
    {
        this.cellPhone = cellPhone;
    }
    
    public String getCellPhone()
    {
        return cellPhone;
    }

    // this works, but it mixes the Model and the View
    public String getAddressHTMLFormat()
    {
        String address = street + "<br>" + city + ", " + state + " " + zip;

        return address;
    }
}
