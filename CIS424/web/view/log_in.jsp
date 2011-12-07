<%@include file="header_intro.jsp" %>
<title>Log In</title>
            <br><br>
            <div id="box">
                <table width="100%" cellpadding="2px"><tr><td colspan="2"><h2>Log In</h2></td>
                    <tr><td colspan="2">
                            <!-- The email and password you entered did not match.-->
                        </td></tr>
                    <tr>
                        <td class="right_align" title="Enter email">Email: </td>
                        <td class="left_align"><input type="text" name="email" title="Enter password"/></td></tr>
                    <tr>
                        <td class="right_align">Password: </td>
                        <td class="left_align"><input type="password" name="password"/></td></tr>
                    <tr><td>                            
                        </td></tr>
                    <tr colspan="2">
                        <td class="right_align"><input type="button" value="Cancel" 
                                                       onclick="window.location.href='home.jsp'" 
                                                       title="Goes to Homepage"/></td>
                        <td class="left_align"><input type="submit" value="logIn" title="Welcome back"/></td>
                    </tr>
                    <tr>
                        <td class="right_align"><a href="forgot_password.jsp" 
                                                   title="If you forgot password click this link" >Forgot Password</a></td>
                        <td class="left_align"><a href="sign_up.jsp"
                                                    title="Sign up for an account">Sign Up</a></td>
                    </tr>   
                    </table>    </div>
</div>
<br></br>
<%@include file="footer.jsp" %>