<%--
    Document   : footer
    Created on : Nov 29, 2011, 3:29:24 PM
    Author     : Dany Luevano
--%>
<%@ page import="java.util.*" %>
<% GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>

<div style="text-decoration: none; color: #C6930A; background-color:#1E4D2B; padding: 2px; margin: 2px">
    
<p><a href="<%= response.encodeURL("terms.jsp")%>"/> Terms of Use</a> | &copy; Copyright <%= currentYear%> CPP Alumni Network</p>
    
    
</div>
</div>
</body>
</html>
