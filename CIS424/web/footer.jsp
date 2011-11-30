<%--
    Document   : footer
    Created on : Nov 29, 2011, 3:29:24 PM
    Author     : Dany Luevano
--%>
<%@ page import="java.util.*" %>
<% GregorianCalendar currentDate = new GregorianCalendar();
int currentYear = currentDate.get(Calendar.YEAR);
%>

<div id="footer">
    <table class="footer" >
                <tr>
<td width="25%"></td>
<td width="15%">Terms of Use</td>
<td width="20%"><small>&copy; Copyright <%= currentYear %>CPP Alumni Network</small></td>
<td width="15%">Contact Us</td>
<td width="25%"></td>
                </tr>
            </table>
            </div>
    
    </div>
</body>
</html>
