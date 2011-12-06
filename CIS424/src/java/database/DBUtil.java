package database;

import javax.servlet.http.*;
import java.sql.*;

public class DBUtil extends HttpServlet {

    public static Connection createConnection(HttpServletRequest request) {
        Connection connection = null;

        try {
            // get a connection
            String dbURL = "jdbc:mysql://localhost:3306/cis424";
            String username = "cis424";
            String password = "cis424";
            connection = DriverManager.getConnection(dbURL, username, password);
            
            String error = "Successfully Connected!";
            HttpSession session = request.getSession();
            session.setAttribute("connectionError", error);
        } catch (SQLException e) {
            String error = "<b>SQL Exception</b><br><br>Error executing the SQL statement: " + e.getMessage();
            HttpSession session = request.getSession();
            session.setAttribute("connectionError", error);
        }

        return connection;
    }
}
