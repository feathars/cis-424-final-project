<%@include file="header_intro.jsp" %>

<title>Forgot Password</title>
<br><br>
<div id="box">
    <h2>Forgot Password</h2>
    <%@include file="error.jsp" %>
    <form action="<%= response.encodeURL(request.getContextPath() + "/ForgotPassword")%>" method="post">
    <table width="100%" cellpadding="2">
        <tr>
            <td colspan="2" style="padding-bottom: 20px;">Please enter the email associated with your account.</td>
        </tr>
        <td class="right_align" style="padding-top: 5px;">Email: </td>
        <td class="left_align"><input type="text" name="email"/></td></tr>
    </table>
    <input type="button" value="Cancel" onclick="window.location.href='<%= request.getContextPath() + "/view/log_in.jsp"%>'"/>
    <input type="submit" value="Submit" style="margin-bottom: 10px; margin-top: 20px;"/>
    </form>
</div>
<br>
<%@include file="footer.jsp" %>