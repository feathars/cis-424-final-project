<%@include file="header_intro.jsp" %>

<title>Close Account</title>
<br><br>
            <div id="box">
                <table width="100%" ><tr><td colspan="2"><h2>Close Account</h2></td>
                    <tr>
                        <td colspan="2">Enter users email address to close account.</td>
                    </tr>    
                    <tr><td colspan="2">
                            <!-- The email you entered was not in the database.-->
                        </td></tr>
                    
                    <tr>
                        <td class="right_align">Email: </td>
                        <td class="left_align"><input type="text" name="email"></input></td></tr>
                    <tr><td>                            
                        </td></tr>
                    <tr>
                        <td class="right_align"><input type="button" value="Cancel" 
                                                       onclick="window.location.href='home.jsp'" 
                                                       title="Goes to Homepage" ></td>
                        <td class="left_align"><input type="submit" value="Close Account"></input></input></td>
                    </tr>
                    </table>    </div>
</div>
<br></br>
<%@include file="footer.jsp" %>