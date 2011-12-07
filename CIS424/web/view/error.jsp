<% String error = request.getParameter("error");
    if (error != null) {
%><%= "<p class='error'>" + error + "</p>"%>
<%}%>