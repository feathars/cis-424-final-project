package account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import business.*;
import database.UserDB;
import javax.mail.MessagingException;
import utilities.MailUtil;

public class ForgotPasswordServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String email = request.getParameter("email");
        String error = "";
        User user = null;
        
        if (email.isEmpty())
            error = "You must enter an email address.";
        
        if (!UserDB.emailExists(email) && error.equals(""))
            error = "That email is not associated with an account.";
        
        if (email.indexOf("@") == -1)
            error = "Please enter a valid email address.";
        
        if (error.equals(""))
        {
            String password = UserDB.selectPassword(email);
            
            if (password != null)
            {
                try
                {
                    String subject = "Account Password Request";
                    String body = "Your password is " + password + ".";
                    MailUtil.sendMail(email, subject, body, false);
                }
                catch (MessagingException ex)
                {
                    error = "An unknown error occurred while sending your password.\n" + ex.getLocalizedMessage();
                    
                    forwardWithError(request, response, error);
                }

                String url = response.encodeURL("/view/forgot_password_sent.jsp?email=" + email);
                RequestDispatcher dispatcher =
                        getServletContext().getRequestDispatcher(url);
                dispatcher.forward(request, response);
            }
            else
            {
                error = "An unknown error occurred while retreiving your info.";

                forwardWithError(request, response, error);
            }
        }
        else
        {
            forwardWithError(request, response, error);
        }
    }
    
    private void forwardWithError(HttpServletRequest request, HttpServletResponse response, String error) throws ServletException, IOException
    {
        String url = response.encodeURL("/view/forgot_password.jsp?error=" + error);
            RequestDispatcher dispatcher =
                    getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
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
        return "Verifies email and then sends user email with password.";
    }
}