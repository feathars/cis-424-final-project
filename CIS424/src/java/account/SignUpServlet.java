package account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import business.*;
import database.EducationDB;
import database.UserDB;
import java.util.ArrayList;
import utilities.ValidationUtil;

public class SignUpServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String error = "";
        Member member = null;
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String lastNameOnDiploma = request.getParameter("lastNameOnDiploma");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String institution = "Cal Poly Pomona";
        String major = request.getParameter("major");
        String degree = request.getParameter("degree");
        String gradYear = request.getParameter("gradYear");
        String accept = request.getParameter("accept");
        
        if(UserDB.emailExists(email))
            error = "That email is already associated with another account.\n" +
                    "Please use a different email or <a href=" + request.getContextPath() + "/view//log_in.jsp>log in</a>.";
        
        if (error.equals(""))
            error = checkRequiredFields(request);
        
        if (accept != null && !accept.equals("true") && error.equals(""))
            error = "You must accept the disclosure.";
        
        if (!password.equals(confirmPassword) && error.equals(""))
            error = "Passwords do not match.";
        
        if (error.equals(""))
        {
            HttpSession session = request.getSession();

            synchronized (session)
            {
                Education education = new Education();
                education.setInstitution(institution);
                education.setDegree(degree);
                education.setMajor(major);
                education.setGradYear(gradYear);
                
                member = new Member();
                member.setFirstName(firstName);
                member.setLastName(lastName);
                member.setLastNameOnDegree(lastNameOnDiploma);
                member.setEmail(email);
                member.setPassword(password);
                member.addEducation(education);
               
                UserDB.insertMember(member);
                EducationDB.insert(member, education);
                
                session.setAttribute("user", member);
            }

            String url = response.encodeURL("/view/personal_information.jsp");
            RequestDispatcher dispatcher =
                    getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
        else
        {
            String url = response.encodeURL("/view/sign_up.jsp?error=" + error);
            RequestDispatcher dispatcher =
                    getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
    }
    
    private String checkRequiredFields(HttpServletRequest request) throws ServletException
    {
        String error = "";
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String major = request.getParameter("major");
        String degree = request.getParameter("degree");
        String gradYear = request.getParameter("gradYear");
        
        ArrayList<String> reqFields = new ArrayList<String>();
        
        reqFields.add(firstName);
        reqFields.add(lastName);
        reqFields.add(email);
        reqFields.add(password);
        reqFields.add(confirmPassword);
        reqFields.add(major);
        reqFields.add(degree);
        reqFields.add(gradYear);
        
        boolean hasEmptyFields = ValidationUtil.hasEmptyField(reqFields);
        
        if (hasEmptyFields)
            error = "Please fill in all required fields.";
        
        return error;
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Creates a new user and logs them in.";
    }
}