<%-- 
    Document   : personal_information.jsp
    Created on : Nov 30, 2011, 10:53:33 AM
    Author     : Gabriel Zavala
--%>
<%@include file="/view/header_user.jsp" %>
<title>Account Information</title>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/index.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/demo.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery.color.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-1.4.1.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-ui-1.7.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/demo.css" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/index.css" />

<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Account Information</h1>

                <div id="content">
                    <div id="tab-container">
                        <ul> <%--url encode completed --%>
                            <li><a href="<%= response.encodeURL("personal_information.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_information.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("profile_picture.jsp")%>">Profile Picture</a></li>
                            <li><a href="<%= response.encodeURL("contact_info.jsp")%>">Contact Info</a></li>
                            <li><a href="<%= response.encodeURL("education.jsp")%>">Education</a></li>
                            <li class="selected"><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>
                    <div id="main-container">
                        <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
                            <table cellspacing="5" border="0">
                                <tr>
                                    <td align="left">Email: </td>
                                    <td><input type="text" name="email" size="50"/></td>
                                </tr>
                                <tr>
                                    <td align="left">New Password: </td>
                                    <td><input type="text" name="newPassword" size="50"/></td>
                                </tr>
                                <tr>
                                    <td align="left">Confirm New Password: </td>
                                    <td><input type="text" name="confirmNewPassword" size="50"/></td>
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