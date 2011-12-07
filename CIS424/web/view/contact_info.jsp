<%-- 
    Document   : contact_info
    Created on : Dec 5, 2011, 11:59:37 PM
    Author     : Administrador
--%>
<%@include file="header_user.jsp" %>

<h1>Contact Info</h1>
<form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
    <table  id="box" cellspacing="5" border="0">
        <tr>
            <td align="left" width="150">Email: </td>
            <td><input type="text" name="email" size="40"><br>
                <font size="2">Edit email in <a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></font>
            </td>
        </tr>
        <tr>
            <td align="left">Home Phone: </td>
            <td><input type="text" name="homePhone" size="40"></td>
        </tr>
        <tr>
            <td align="left">Cell Phone: </td>
            <td><input type="text" name="celPhone" size="40"></td>
        </tr>
        <tr>
            <td align="left">Website: </td>
            <td><input type="text" name="website" size="40"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><br><input type="submit" value="Cancel"><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>

<%@include file="footer.jsp" %>