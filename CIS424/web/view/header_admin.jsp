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
    <div id="pagewidth">
        <body>
            <div id="header">
                <a href="home.jsp"><image src="<%= request.getContextPath()%>/images/CPP_logoblack.gif" height="75px" style=" float: left"/></a>
                <br>
                <b text-decoration="none" style=" float: left; font-size:25px;">
                    <a id="header" href="home.jsp">CPP Alumni Network</a></b>
                <b style=" float: left; font-size: 25px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;Search &nbsp;</b> 
                <b style=" float: left; font-size:25px;">
                    <input type="text" value=""/>&nbsp;
                    <a id="header" href="dummy.jsp" text>Go</a></b>

                <b style=" float: right; font-size: 25px;" >
                    <a id="header" href="profile_info.jsp"> Profile</a> &nbsp;|
                    <a id="header" href="requests.jsp">Requests</a> &nbsp;|
                    <a id="header" href="requests.jsp">Admin</a> &nbsp;|
                    <a id="header" href="home.jsp">Log Out </a>
                </b>
                </br>
            </div>