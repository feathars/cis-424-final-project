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
                <h1 align="center">Contact Info</h1>

                <div id="content">
                    <div id="tab-container">
                        <ul> <%--url encode completed --%>
                            <li><a href="<%= response.encodeURL("personal_information.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_information.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("profile_picture.jsp")%>">Profile Picture</a></li>
                            <li class="selected"><a href="<%= response.encodeURL("contact_info.jsp")%>">Contact Info</a></li>
                            <li><a href="<%= response.encodeURL("education.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>
                    <div id="main-container">
                                            <form action="userInfoServlet" method="post">
                            <table cellspacing="15" border="0">
                                <tr>
                                    <td align="left">Email: </td>
                                    <td><input type="text" name="email" size="50"/><br></td></tr>
                                <tr><td></td>
                                    <td>
                                        <font style="font-size: .75em;">&nbsp;Edit email in 
                                       <a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></font></td>
                                </tr>
                                </tr>
                                <tr>
                                    <td align="left">Home Phone: </td>
                                    <td><input type="text" name="Home Phone" size="50"/></td>
                                </tr>

                                <tr>
                                    <td align="left">Cell Phone:</td>
                                    <td><input type="text" name="Cell Phone" size="50"/></td>
                                </tr>

                                <tr>
                                    <td align="left">Website:</td>
                                    <td><input type="text" name="Cell Phone" size="50"/></td>
                                </tr>
                                
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><br><input type="submit" value="Cancel">&nbsp; <input type="submit" value="Save"></td>
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