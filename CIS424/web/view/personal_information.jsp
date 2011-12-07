<%-- 
    Document   : personal_information.jsp
    Created on : Nov 30, 2011, 10:53:33 AM
    Author     : Gabriel Zavala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Information</title>
    </head>
    <body>
        <h1>personal_info.jsp</h1>
        <form action="userInfoServlet" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="left">First Name: *</td>
                    <td><input type="text" name="firstName" size="50"></td>
                </tr>
                <tr>
                    <td align="left">Last Name: *</td>
                    <td><input type="text" name="lastName" size="50"></td>
                </tr>

                <tr>
                    <td align="left">Last Name on Diploma:</td>
                    <td><input type="text" name="lastNameOnDiploma" size="50"></td>
                </tr>

                <tr>
                    <td>Gender:</td>
                    <td><select name="gender">
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td align="left">About Me:</td>
                    <td><textarea name="aboutMe" rows="3" cols="37"></textarea></td>
                </tr>
                <tr>
                    <td align="left">Professional Skills:</td>
                    <td><textarea name="professionalSkills" rows="3" cols="37"></textarea></td>
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
