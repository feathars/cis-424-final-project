<%-- 
    Document   : work_information.jsp
    Created on : Nov 30, 2011, 12:43:18 PM
    Author     : Gabriel Zavala
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Information</title>
    </head>
    <body>
        <h1>work_information.jsp</h1>
        <form action="workInfoServlet" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="left">Current Employer:</td>
                    <td><input type="text" name="currentEmployer" size="50"/></td>
                </tr>
                <tr>
                    <td align="left">Position:</td>
                    <td><input type="text" name="position" size="50"/></td>
                </tr>

                <tr>
                    <td align="left">Work Address:</td>
                    <td>Street <input type="text" name="street" size="50"/></td>
                </tr>
                <tr>
                    <td align="left">&nbsp;</td>
                    <td>City <input type="text" name="city" size="50"/></td>
                </tr>
                <tr>
                    <td align="left">&nbsp;</td>
                    <td>Zip Code <input type="text" name="zipCode" size="25"/></td>
                </tr>        
                <tr>
                    <td>State:</td>
                    <td><select name="state">
                            <option value="ca">CA</option>
                            <option value="washington">WA</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td align="left">Work Phone:</td>
                    <td><input type="text" name="workPhone" size="50"/></td>
                </tr>
                <tr>
                    <td align="left">Website:</td>
                    <td><input type="text" name="position" size="50"/></td>
                </tr>

                <tr>
                    <td colspan="2">&nbsp;</td>

                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><br><input type="submit" value="Cancel"/><input type="submit" value="Save"/></td>
                </tr>
            </table>
        </form>

    </body>
</html>

