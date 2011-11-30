<%@include file="header_1.jsp" %>
<title>Log In</title>
            <br><br>
            <div id="box">
                <table width="100%" cellpadding="2px"><tr><td colspan="2"><h2>Log In</h2></td>
                    <tr><td colspan="2"></td></tr>
                    <tr>
                        <td class="left_column" >Email: </td>
                        <td class="right_column"><input type="text" name="email"></input></td></tr>
                    <tr>
                        <td class="left_column">Password: </td>
                        <td class="right_column"><input type="password" name="password"></input></td></tr>
                    <tr><td>                            
                        </td></tr>
                    <tr>
                        <td class="left_column"><input type="submit" value="Cancel"></td>
                        <td class="right_column"><input type="submit" value="Log In"></input></input></td>
                    </tr>
                    <tr>
                        <td class="left_column"><a href="forgot_password.jsp">Forgot Password</a></td>
                        <td class="right_column"><a href="sign_up.jsp">Sign Up</a></td>
                    </tr>   
                    </table>    </div>
</div>
<br></br>
<%@include file="footer.jsp" %>        
</body>
</html>