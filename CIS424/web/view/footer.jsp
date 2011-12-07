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
                <ul id="footer">
                    <li><a style="text-decoration: none; color: #FFFFFF" href="terms.jsp"/> Terms of Use</a> | &copy; Copyright <%= currentYear %>CPP Alumni Network</li>
                </ul>
            </div>
    
    </div>
</body>
</html>
