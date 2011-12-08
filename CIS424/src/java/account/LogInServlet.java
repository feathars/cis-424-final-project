package account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import business.*;
import database.UserDB;

public class LogInServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        String error = "";
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        User user = null;
        boolean userExists = false;
        
        if (email != null)
            userExists = UserDB.emailExists(email); //Check if the users email exists in the database
        else
            error = "You must enter an email address";
        
        if (userExists) //If it exists, check if the email and password match
        {
            user = UserDB.select(email);
            
            if (!user.getPassword().equals(password))
            {
                error = "The password you entered was incorrect.";
                user = null;
            }
        }
        else
        {
            error = "The email you entered was associated with any accounts.";
        }
        
        if (error.equals(""))
        {
            synchronized (session)
            {
                session.setAttribute("user", user);
            }

            String url = response.encodeURL("/view/profile_info.jsp");
            RequestDispatcher dispatcher =
                    getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
        else
        {
            String url = response.encodeURL("/view/log_in.jsp?error=" + error);
            RequestDispatcher dispatcher =
                    getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
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
        return "Verifies and logs in the user with specified email and password.";
    }
}