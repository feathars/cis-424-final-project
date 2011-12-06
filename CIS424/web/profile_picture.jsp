<%-- 
    Document   : profile_picture
    Created on : Dec 5, 2011, 11:00:55 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>personal Information</title>
        <link rel="stylesheet" type="text/css" media="screen" href="styles/css.css" />
    </head>
    <body>
        <h1>personal_info.jsp</h1>
        <form action="userInfoServlet" method="post">

<table class="example-code" border="0" bordercolor="#000000" style="background-color:#FFFFFF" width="400" cellpadding="3" cellspacing="3">
	<tr>
		<td rowspan="2" >
                    <img src="images/profile_image.jpg"><br></td>
		<td>Current File: Me.jpg</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td><input type="submit" value="Choose File"></td>
		<td><input type="submit" value="Delete Photo"></td>
		<td><input type="submit" value="Use as Default Photo"></td>
		<!--<td>Table Cell8</td>-->
	</tr>
        
	<tr>
		<td rowspan="2"><img src="images/profile_image.jpg"><br></td>
		<td>No file selected:</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td><input type="submit" value="Choose File"></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<!--<td>Table Cell</td>-->
	</tr>
        
	<tr>
		<td rowspan="2"><img src="images/profile_image.jpg"><br></td>
		<td>No File Sected: </td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td><input type="submit" value="Choose File"></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<!--<td>Table Cell</td>-->
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" value="Cancel"></td>
		<td><input type="submit" value="Save"></td>
                <td>&nbsp;</td>
	</tr>
</table>
<p style="font-family:verdana,arial,sans-serif;font-size:10px;"><a href="http://www.quackit.com/html/html_table_tutorial.cfm" target="_top">HTML Tables</a></p>



    </form>

    </body>
</html>
