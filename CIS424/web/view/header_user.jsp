<%-- 
    Document   : Header for the sign up, log in, forgot password pages.
    Created on : Nov 29, 2011, 3:33:55 PM
    Author     : Dany Luevano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.RequestDB" %>
<%@page import="business.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"/>
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/main.css" />
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/css.css" />
        <%@include file="../scripts/scripts.jsp" %>
    </head>
    <body>
        <div id="pagewidth">
            <div class="head">
                <a href="<%= response.encodeURL(request.getContextPath() + "/view/profile_info.jsp")%>"><image src="<%= request.getContextPath()%>/images/CPP_logoblack.gif" height="65px" style="float: left; padding-left: 5px; padding-top: 5px;"/></a>
                <br>
                <b text-decoration="none" style=" float: left; font-size:25px;">
                    <a class="header" href="<%= response.encodeURL(request.getContextPath() + "/view/profile_info.jsp")%>">&nbsp;&nbsp;CPP Alumni Network</a></b>
                <b style=" float: left; font-size: 25px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;<font style="font-family: none">Search</font>&nbsp;</b> 
                <b style=" float: left; font-size:25px;">
                    <input type="text" value=""/>&nbsp;
                    <a class="header" href="<%= request.getContextPath()%>view/search_results.jsp" text>Go</a></b>

                <b style=" float: right; font-size: 25px;" >
                    <a class="header" href="<%= response.encodeURL(request.getContextPath() + "/view/profile_info.jsp")%>"> Profile</a> &nbsp;|
                    <a class="header" href="<%= response.encodeURL(request.getContextPath() + "/view/requests.jsp")%>">
                        Requests
                    </a> &nbsp;|
                    <a class="header" href="<%= response.encodeURL(request.getContextPath() + "/LogOut")%>">Log Out&nbsp;&nbsp;</a>
                </b>
                <br>
            </div>
