<%@include file="header_intro.jsp" %>

<title>Close Account</title>
<br><br>
<div id="box">
    <h2>Close Account</h2>
    <table width="100%" >
        <tr>
            <td colspan="2">Are you sure you would like to close the account for:
        </tr><tr><td colspan="2">(user email)</td></tr>
        <tr>
            <td colspan="2">This will permanently delete all the information for this user!</td>
        <tr>                            
        </tr>
        <tr>
            <td class="right_align"><input type="button" value="Cancel" 
                                           onclick="window.location.href='<%= response.encodeURL("home.jsp")%>'" 
                                           title="Goes to Homepage"/></td>
            <td class="left_align"><input type="button" value="Continue" 
                                          onclick="window.location.href='<%= response.encodeURL("close_account.jsp")%>'" 
                                          title="Goes to Homepage"/></td>
        </tr>
    </table>
</div>
<br>
<%@include file="footer.jsp" %>