<%-- 
    Document   : profile_info
    Created on : Dec 6, 2011, 11:57:21 AM
    Author     : Administrador
<%= member.getGender()%>
--%>


<%@include file="/view/header_user.jsp" %>
<title>Profile Information</title>
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
                            <li class="selected"><a href="<%= response.encodeURL(request.getContextPath() + "/view/profile_info.jsp")%>">Info</a></li>
                            <li><a href="<%= response.encodeURL(request.getContextPath() + "/view/profile_photos.jsp")%>">Photos</a></li>
                            <li><a href="<%= response.encodeURL(request.getContextPath() + "/view/profile_friends.jsp")%>">Friends</a></li>
                        </ul>
                    </div>
                    <div id="main-container">            

                        <div>
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Personal Info </legend>


                                <table style="margin: 12px;"  align="left" cellspacing="5" border="0" width="560">
                                    <tr>
                                        <td align="left">Gender: [gender]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Email: [email]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td>Home Phone: [home phone]</td>
                                        <td align="right">Cell Phone: [cell phone]</td>
                                    </tr>

                                    <tr>
                                        <td align="left">About Me: [about description]</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">Website: [url]</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">Professional skills: [skills]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                </table>


                            </fieldset>
                            <!-- Personal Info Section-->        
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Personal Info </legend>


                                <table   style="margin: 12px;" align="left" cellspacing="5" border="0" width="560">
                                    <tr>
                                        <td align="left">Current Employer: [Cal Poly Pomona]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Position: [mascot]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td>Work Address: [address][city][state][zipcode]</td>
                                        <td align="right">Cell Phone: [cell phone]</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Work Phone: [workphone]</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">Website: [url]</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">Looking for a new job: [yes/no]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                </table>

                            </fieldset>

                            <!-- Education Info Section-->        
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Personal Info </legend>


                                <table   style="margin: 12px;" align="left" cellspacing="5" border="0" width="560">
                                    <tr>
                                        <td align="left">Institution: [Cal Poly Pomona]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Degree: [bachelors]</td>
                                        <td align="right">Major: [CIS]</td>
                                    </tr>

                                    <tr>
                                        <td>Graduation Year: [year]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td colspan="2"><hr></td>

                                    </tr>

                                    <tr>
                                        <td align="left">Institution: [Cal Poly Pomona]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Degree: [bachelors]</td>
                                        <td align="right">Major: [CIS]</td>
                                    </tr>

                                    <tr>
                                        <td>Graduation Year: [year]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                </table>

                            </fieldset>
                        </div>
                    </div>
                </div>
                <%-- code to complete table. this table centers the entire content.--%>
            </td>
        </tr>
    </table>
</center>

<%@include file="footer.jsp" %>