<%@include file="header_intro.jsp" %>

<title>Close Account</title>
<br><br>
<div id="box">
    <table width="100%" >
        <tr><td><h2>Close Account</h2></td>
        <tr><td></td></tr>
        <tr>
            <td>The account for the email, (EMAIL) has 
                been permanently deleted.</td>
        </tr>
        <tr>
            <td>
                <br>
                <input type="button" value="Okay" 
                       onclick="window.location.href='<%= response.encodeURL("home.jsp")%>'" 
                       title="Goes to Homepage" ></td>
        </tr>
    </table>
</div>
<br>
<%@include file="footer.jsp" %>        
