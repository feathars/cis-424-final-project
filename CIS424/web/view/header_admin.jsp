<%-- 
    Document   : Header for the sign up, log in, forgot password pages.
    Created on : Nov 29, 2011, 3:33:55 PM
    Author     : Dany Luevano
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/main.css" />
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/css.css" />
        <%@include file="../scripts/scripts.jsp" %> 
    </head>
    <body>
        <div id="pagewidth">

            <div class="head">
                <a href="<%= response.encodeURL("admin_home.jsp")%>"><image src="<%= request.getContextPath()%>/images/CPP_logoblack.gif" height="65px" style="float: left; padding-left: 5px; padding-top: 5px;"/></a>
                <br>
                <b text-decoration="none" style=" float: left; font-size:25px;">
                    <a class="header" href="<%= response.encodeURL("admin_home.jsp")%>">&nbsp;&nbsp;CPP Alumni Network</a></b>
                <b style=" float: left; font-size: 25px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;Search &nbsp;</b> 
                <b style=" float: left; font-size:25px;">
                    <input type="text" value=""/>&nbsp;
                    <a class="header" href="dummy.jsp" text>Go</a></b>

                <b style=" float: right; font-size: 25px;" >
                    <a class="header" href="requests.jsp">Admin Home</a> &nbsp;|
                    <a class="header" href="home.jsp">Log Out </a>
                </b>
                </br>
            </div>