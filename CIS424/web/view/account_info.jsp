<%-- 
    Document   : personal_information.jsp
    Created on : Nov 30, 2011, 10:53:33 AM
    Author     : Gabriel Zavala
--%>
<%@include file="/view/header_user.jsp" %>
<title>Account Information</title>
<script type="text/javascript" src="../scripts/index.js"></script>
<script type="text/javascript" src="../scripts/demo.js"></script>
<script type="text/javascript" src="../scripts/jquery.color.js"></script>
<script type="text/javascript" src="../scripts/jquery-1.4.1.js"></script>
<script type="text/javascript" src="../scripts/jquery-ui-1.7.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="../styles/demo.css" />
<link rel="stylesheet" type="text/css" href="../styles/index.css" />

<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Account Information</h1>

                <div id="content">
                    <div id="tab-container">
                        <ul>
                            <li><a href="personal_information.jsp">Personal Info</a></li>
                            <li><a href="work_information.jsp">Work Info</a></li>
                            <li><a href="profile_picture.jsp">Profile Picture</a></li>
                            <li><a href="contact_info.jsp">Contact Info</a></li>
                            <li><a href="education.jsp">Education</a></li>
                            <li  class="selected"><a href="account_info.jsp">Account Info</a></li>
                        </ul>
                    </div>


                    <div id="main-container">
                        <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
                            <table  class="example-code" cellspacing="5" border="0" style="margin: auto;">
                                <tr>
                                    <td align="left" width="150">Email: </td>
                                    <td><input type="text" name="email" size="40"></td>
                                </tr>
                                <tr>
                                    <td align="left">New Password: </td>
                                    <td><input type="text" name="newPassword" size="40"></td>
                                </tr>
                                <tr>
                                    <td align="left">Confirm New Password: </td>
                                    <td><input type="text" name="confirmNewPassword" size="40"></td>
                                </tr>
                                <tr>
                                    <td align="left">Account Deletion: </td>
                                    <td><input type="submit" value="Close Account"></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><br><input type="submit" value="Cancel"><input type="submit" value="Save"></td>
                                </tr>
                            </table>
                        </form>

                    </div>
                </div>
                <%-- code to complete table. this table centers the entire content.--%>
            </td>
        </tr>
    </table>
</center>

</body>


