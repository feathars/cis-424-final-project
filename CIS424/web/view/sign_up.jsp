<%@include file="header_1.jsp" %>
<title>Sign Up</title>
<br><br>
<div id="box">
    <table width="100%" cellpadding="2px"><tr><td colspan="2"><h2>Sign Up</h2></td>
        <tr><td colspan="2">* Indicates required field.</td></tr>
        <tr>
            <td class="right_column">First Name: </td>
            <td class="right_column"><input type="text" name="first_name"/></td>
        </tr>
        <tr>
            <td class="left_column">Last Name: </td>
            <td class="right_column"><input type="text" name="last_name"/></td>
        </tr>
        <tr><td>                            
            </td></tr>
        <tr>
            <td class="left_column"><input type="submit" value="Cancel"/></td>
            <td class="right_column"><input type="submit" value="Log In"/></td>
        </tr>
        <tr>
            <td class="left_column"><a href="forgot_password.jsp">Forgot Password</a></td>
            <td class="right_column"><a href="sign_up.jsp">Sign Up</a></td>
        </tr>   
    </table>
</div>
<br></br>
<%@include file="footer.jsp" %>        
</body>
</html>