<%-- 
    Document   : profile_info
    Created on : Dec 6, 2011, 11:57:21 AM
    Author     : Administrador
<%= member.getGender()%>
--%>


<%@include file="/view/header_user.jsp" %>
<title>Profile Friends</title>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/index.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/demo.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery.color.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-1.4.1.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-ui-1.7.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/demo.css" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/index.css" />

<center>
    <table align="center" border="0">
        <tr><td align="center">
                <br>

                <table class="example-code" cellspacing="5" border="0" bordercolor="#000000" style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                    <tr>
                        <td rowspan="3" >
                            <img src="<%= request.getContextPath()%>/images/profile_image.jpg"><br></td>
                        <td><h2>[Billy Bronco (Bronco)]</h2></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>
                    <tr>
                        <td>[Mascot at Cal Poly Pomona]</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <form action="<%= response.encodeURL(request.getContextPath() + "/view/personal_information.jsp")%>" method="post">
                                <input type="submit" value="Edit">
                            </form>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

                <div id="content">
                    <div id="tab-container">

                        <ul><%--url encode completed --%>
                            <li><a href="<%= response.encodeURL("profile_info.jsp")%>">Info</a></li>
                            <li><a href="<%= response.encodeURL("profile_photos.jsp")%>">Photos</a></li>
                            <li class="selected"><a href="<%= response.encodeURL("profile_friends.jsp")%>">Friends</a></li>
                        </ul>
                    </div>
                    <div id="main-container">            

                        <div> <%-- paste content here.--%>
                            <table class="altrowstable" id="alternatecolor">
                                <tr>
                                    <th>First Name </th><th>Last Name</th><th>Last Name in Diploma</th>
                                    <th>Diploma</th><th>Major</th><th>Graduation Year</th><th>View Profile</th>
                                </tr>
                                <tr>
                                    <td>Text 1A</td><td>Text 1B</td><td>Text 1C</td>
                                    <td> </td><td> </td><td> </td><td> </td>
                                </tr>
                                <tr>
                                    <td>Text 2A</td><td>Text 2B</td><td>Text 2C</td>
                                    <td> </td><td> </td><td> </td><td> </td>
                                </tr>
                                </tr>
                                <tr>
                                    <td>Text 3A</td><td>Text 3B</td><td>Text 3C</td>
                                    <td> </td><td> </td><td> </td><td> </td>
                                </tr>
                                <tr>
                                    <td>Text 4A</td><td>Text 4B</td><td>Text 4C</td>
                                    <td> </td><td> </td><td> </td><td> </td>
                                </tr>
                                <tr>
                                    <td>Text 5A</td><td>Text 5B</td><td>Text 5C</td>
                                    <td> </td><td> </td><td> </td><td> </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <%-- code to complete table. this table centers the entire content.--%>
            </td>
        </tr>
    </table>
</center>