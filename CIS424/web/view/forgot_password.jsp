<%@include file="header_intro.jsp" %>

<title>Forgot Password</title>
<br><br>
            <div id="box">
                <h2>Forgot Password</h2>
                <table width="100%" >
                    <tr>
                        <td colspan="2">Please enter the email associated with your account.</td>
                    <tr>
                     <tr>
                         <td colspan="2"><%@include file="error.jsp" %><!-- The email you entered was not in our records.-->
                         </td>
                     </tr>
                        <td class="right_align">Email: </td>
                        <td class="left_align"><input type="text" name="email"></input></td></tr>
                    <tr><td>                            
                        </td></tr>
                    <tr>
                        <td class="right_align"><input type="button" value="Cancel" 
                                                       onclick="window.location.href='home.jsp'" 
                                                       title="Goes to Homepage" ></td>
                        <td class="left_align"><input type="submit" value="Submit"></input></input></td>
                    </tr>
                    </table>    </div>
</div>
<br></br>
<%@include file="footer.jsp" %>