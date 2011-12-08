<%-- 
    Document   : account_info
    Created on : Dec 6, 2011, 12:07:18 AM
    Author     : Administrador
--%>

<%@include file="header_user.jsp" %>

        <h1>Account Info</h1>
        <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
            <table  class="example-code" cellspacing="5" border="0" style="margin: auto;">
                <tr>
                    <td align="left" width="150">Email: </td>
                    <td><input type="text" name="email" size="40"></td>
                </tr>
                <tr>
                    <td align="left">New Password: </td>
                    <td><input type="text" name="newPassword" size="40"></td>
                </tr>
                <tr>
                    <td align="left">Confirm New Password: </td>
                    <td><input type="text" name="confirmNewPassword" size="40"></td>
                </tr>
                <tr>
                    <td align="left">Account Deletion: </td>
                    <td><input type="submit" value="Close Account"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><br><input type="submit" value="Cancel"><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>

        <%@include file="footer.jsp" %>
