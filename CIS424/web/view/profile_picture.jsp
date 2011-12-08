<%@include file="header_user.jsp" %>
<title>Account Update - Profile Picture</title>
<script type="text/javascript" src="../scripts/index.js"></script>
<script type="text/javascript" src="../scripts/demo.js"></script>
<script type="text/javascript" src="../scripts/jquery.color.js"></script>
<script type="text/javascript" src="../scripts/jquery-1.4.1.js"></script>
<script type="text/javascript" src="../scripts/jquery-ui-1.7.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="../styles/demo.css" />
<link rel="stylesheet" type="text/css" href="../styles/index.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" media="screen" href="../styles/css.css" />
<title>Profile Information</title>

<center>
      <h1 align="center">Profile Picture</h1>
    <table align="center" border="0" width="730">
        <tr><td>

                <div id="content">
                    <div id="tab-container">
                        <ul> <%--url encode completed --%>
                            <li><a href="<%= response.encodeURL("personal_information.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_information.jsp")%>">Work Info</a></li>
                            <li class="selected"><a href="<%= response.encodeURL("profile_picture.jsp")%>">Profile Picture</a></li>
                            <li><a href="<%= response.encodeURL("contact_info.jsp")%>">Contact Info</a></li>
                            <li><a href="<%= response.encodeURL("education.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>
                    <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">

                        <table border="0" bordercolor="#000000" style="background-color:#FFFFFF" width="400" cellpadding="3" cellspacing="3">
                            <tr>
                                <td rowspan="2" >
                                    <img src="../images/profile_image.jpg"><br></td>
                                <td style="margin:0;"><p>Current File: Me.jpg</p></td>
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
                                <td rowspan="2"><img src="../images/profile_image.jpg"><br></td>
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
                                <td rowspan="2"><img src="../images/profile_image.jpg"><br></td>
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
                                <td>
                                    <input type="button" value="Cancel" onClick="window.location.href='<%= response.encodeURL("home.jsp")%>'"/></td>
                                <td>
                                    <input type="button" value="Save" onClick="window.location.href='<%= response.encodeURL("home.jsp")%>'"/></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </form>
                </div>


                <%-- code to complete table. this table centers the entire content.--%>
            </td>
        </tr>
    </table>
</center>

</body>