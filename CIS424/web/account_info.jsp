<%-- 
    Document   : account_info
    Created on : Dec 6, 2011, 12:07:18 AM
    Author     : Administrador
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>account Information</title>
        <link rel="stylesheet" type="text/css" media="screen" href="styles/css.css" />
    </head>
    <body>
        <h1>account_info.jsp</h1>
        <form action="userInfoServlet" method="post">
    <table  class="example-code" cellspacing="5" border="0">
        <tr>
            <td align="left" width="150">Email: </td>
            <td><input type="text" name="email" size="50"></td>
        </tr>
        <tr>
            <td align="left">New Password: </td>
            <td><input type="text" name="newPassword" size="50"></td>
        </tr>
        <tr>
            <td align="left">Confirm New Password: </td>
            <td><input type="text" name="confirmNewPassword" size="50"></td>
        </tr>
        <tr>
            <td align="left">Account Deletion: </td>
            <td><input type="submit" value="Close Account"></td>
        </tr>

        <tr>
            <td colspan="2">&nbsp;</td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><br><input type="submit" value="Cancel"><input type="submit" value="Save"></td>
        </tr>
    </table>
    </form>

    </body>
</html>

