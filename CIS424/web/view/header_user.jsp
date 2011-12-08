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
        <script type="text/javascript">
            function altRows(id){
                if(document.getElementsByTagName){  
		
                    var table = document.getElementById(id);  
                    var rows = table.getElementsByTagName("tr"); 
		 
                    for(i = 0; i < rows.length; i++){          
                        if(i % 2 == 0){
                            rows[i].className = "evenrowcolor";
                        }else{
                            rows[i].className = "oddrowcolor";
                        }      
                    }
                }
            }

            window.onload=function(){
                altRows('alternatecolor');
            }
        </script>

    </head>
    <body>
    <div id="pagewidth">
            <div id="header">
                <a href="<%= response.encodeURL("profile_info.jsp")%>"><image src="<%= request.getContextPath()%>/images/CPP_logoblack.gif" height="65px" style="float: left; padding-left: 5px; padding-top: 5px;"/></a>
                <br>
                <b text-decoration="none" style=" float: left; font-size:25px;">
                    <a id="header" href="<%= response.encodeURL("profile_info.jsp")%>">&nbsp;&nbsp;CPP Alumni Network</a></b>
                <b style=" float: left; font-size: 25px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;Search &nbsp;</b> 
                <b style=" float: left; font-size:25px;">
                    <input type="text" value=""/>&nbsp;
                    <a id="header" href="dummy.jsp" text>Go</a></b>

                <b style=" float: right; font-size: 25px;" >
                    <a id="header" href="<%= response.encodeURL("profile_info.jsp")%>"> Profile</a> &nbsp;|
                    <a id="header" href="<%= response.encodeURL("requests.jsp")%>">Requests</a> &nbsp;|
                    <a id="header" href="<%= response.encodeURL(request.getContextPath() + "/LogOut")%>">Log Out</a>
                </b>
                </br>
            </div>