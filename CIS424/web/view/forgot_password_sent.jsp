<%@include file="header_intro.jsp" %>

<title>Forgot Password</title>
<br><br>
<div id="box">
    <h2>Forgot Password</h2>
    <table width="100%" >
        <tr><td colspan="2"></td></tr>
        <tr>
            <td colspan="2">An email was sent to <%= request.getParameter("email")%> with your password.</td>
        </tr>
    </table>
    <br>
    <input type="button" value="Log In" style="margin-bottom: 10px" onclick="window.location.href='<%= request.getContextPath() + "/view/log_in.jsp"%>'"/>
</div>
<br>
<%@include file="footer.jsp" %>