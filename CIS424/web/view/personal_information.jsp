<%-- 
    Document   : personal_information.jsp
    Created on : Nov 30, 2011, 10:53:33 AM
    Author     : Gabriel Zavala
--%>
<%@include file="/view/header_user.jsp" %>
<title>Personal Information</title>
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
                <h1 align="center">Personal Information</h1>

                <div id="content">
                    <div id="tab-container">
                        <ul> <%--url encode completed --%>
                            <li class="selected"><a href="<%= response.encodeURL("personal_information.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_information.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("profile_picture.jsp")%>">Profile Picture</a></li>
                            <li><a href="<%= response.encodeURL("contact_info.jsp")%>">Contact Info</a></li>
                            <li><a href="<%= response.encodeURL("education.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>


                    <div id="main-container">
                        <form action="userInfoServlet" method="post">
                            <table cellspacing="5" border="0">
                                <tr>
                                    <td align="left">First Name: *</td>
                                    <td><input type="text" name="firstName" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">Last Name: *</td>
                                    <td><input type="text" name="lastName" size="50"></td>
                                </tr>

                                <tr>
                                    <td align="left">Last Name on Diploma:</td>
                                    <td><input type="text" name="lastNameOnDiploma" size="50"></td>
                                </tr>

                                <tr>
                                    <td align="left">Gender:</td>
                                    <td align="left"><select name="gender">
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left" style="position: relative; bottom: 30px;">About Me:</td>
                                    <td><textarea name="aboutMe" rows="3" cols="37"></textarea></td>
                                </tr>
                                <tr>
                                    <td align="left" style="position: relative; bottom: 30px;">Professional Skills:</td>
                                    <td><textarea name="professionalSkills" rows="3" cols="37"></textarea></td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>

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


