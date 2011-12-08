package account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LogOutServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        
        session.invalidate();
        Cookie[] cookies = request.getCookies();
        
        for (int i=0; i<cookies.length; i++)
        {
            Cookie c = cookies[i];
            c.setMaxAge(-1);
        }
        
        String url = request.getContextPath() + "/view/home.jsp";
        response.sendRedirect(url);
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
        return "Invalidates session.";
    }
}