<%-- 
    Document   : contact_info
    Created on : Dec 5, 2011, 11:59:37 PM
    Author     : Administrador
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact Information</title>
        <link rel="stylesheet" type="text/css" media="screen" href="styles/css.css" />
    </head>
    <body>
        <h1>contact_info.jsp</h1>
        <form action="userInfoServlet" method="post">
    <table  class="example-code" cellspacing="5" border="0">
        <tr>
            <td align="left" width="150">Email: </td>
            <td><input type="text" name="email" size="50"><br>
                Edit email in <a href="#">Account Info</a>
            </td>
        </tr>
        <tr>
            <td align="left">Home Phone: </td>
            <td><input type="text" name="homePhone" size="50"></td>
        </tr>
        <tr>
            <td align="left">Cel Phone: </td>
            <td><input type="text" name="celPhone" size="50"></td>
        </tr>
        <tr>
            <td align="left">Website: </td>
            <td><input type="text" name="website" size="50"></td>
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
