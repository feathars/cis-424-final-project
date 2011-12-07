<%@include file="header_admin.jsp" %>

<title>Administrator Home Page</title>
<br><br>
<div id="box" width="430px">
    <table width="100%" >
        <tr><td colspan="2"><h2>Admin Panel</h2></td>
        <tr><td colspan="2"></td></tr>
        <tr>
            <td><a href="alumni_report.jsp"><img width="125" src="../images/report.png" alt="repot"/></a></td>
            <td align="left"><h3>Alumni Report</h3></td>
        </tr>   
        <tr>
            <td><a href="reset_password.jsp"><img width="125" src="../images/lock.png" alt="reset user account password"/></a></td>
            <td align="left"><h3>Reset User Account Password</h3></td>
        </tr>
        <tr>
            <td><a href="close_account.jsp"><img width="125" src="../images/x_erase.png" alt="close user account"/></a></td>
            <td align="left"><h3>Close User Account</h3></td>
        </tr>
    </table>
</div>
<br>
<%@include file="footer.jsp" %>        
