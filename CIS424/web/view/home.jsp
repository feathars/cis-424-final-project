<%-- 
    Document   : Header for the sign up, log in, forgot password pages.
    Created on : Nov 29, 2011, 3:33:55 PM
    Author     : Dany Luevano
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/main.css"/>
    <title>CPP Alumni Network</title>
</head>

<body>
    <img class="homepageImg"
         src="<%= request.getContextPath()%>/images/CPP_logoblack.gif"
         alt="Cal Poly Pomona Logo"/>
    <br>
    <table class="home">
        <td>
            <a href="<%= response.encodeURL(request.getContextPath() + "/view/log_in.jsp") %>">Log In</a>
        </td>
        <td> | </td>
        <td>
            <a href="<%= response.encodeURL(request.getContextPath() + "/view/sign_up.jsp") %>">Sign Up</a>
        </td>
    </table>
    </body>
</html>
