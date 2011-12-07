<%@include file="header_intro.jsp" %>
 
<title>Reset Password</title>
<br><br>
<div id="box">
    <h2>Reset Password</h2>
    <form action="" method="post">
        <table width="100%" ><tr><td colspan="2"></td>
            <tr>
                <td colspan="2">Enter users email address to reset password.</td>
            </tr>
            <tr><td colspan="2">
                    <!-- The email address you entered was not in the database. -->
                </td>
            </tr>
            <tr>
                <td class="right_align">Email: </td>
                <td class="left_align"><input type="text" name="email"></input></td>
            </tr>
            <tr><td>                            
                </td></tr>
            </table>
                <input type="button" value="Cancel" onclick="window.location.href='home.jsp'" />
                <input type="submit" value="Reset Password" style="margin-bottom: 10px; margin-top: 10px;"/>
                <br>
</form>
</div>
<br>
<%@include file="footer.jsp" %>