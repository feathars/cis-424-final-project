<%@include file="header_intro.jsp" %>
<title>Log In</title>
<br><br>
<div id="box">
    <h2>Log In</h2>
    <%@include file="error.jsp" %>
    <form action="<%= response.encodeURL(request.getContextPath() + "/LogIn")%>" method="post">
        <table width="100%" cellpadding="2">
        <tr>
            <td class="right_align" title="Enter email">Email: </td>
            <td class="left_align"><input type="text" name="email" title="Enter password"/></td></tr>
        <tr>
            <td class="right_align">Password: </td>
            <td class="left_align"><input type="password" name="password"/></td>
        </tr>   
    </table>
        <input type="button" value="Cancel" onClick="window.location.href='home.jsp'"/>
        <input type="submit" value="Log In" style="margin-bottom: 10px; margin-top: 10px;"/>
        <br>
        <font size="2"><a href="forgot_password.jsp" title="If you forgot password click this link">Forgot Password</a>
            &nbsp;&nbsp;<a href="sign_up.jsp" title="Sign up for an account">Sign Up</a></font>
    </form>
</div>
<br>
<%@include file="footer.jsp" %>