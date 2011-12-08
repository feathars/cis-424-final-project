<%-- 
    Document   : personal_information.jsp
    Created on : Nov 30, 2011, 10:53:33 AM
    Author     : Gabriel Zavala
--%>
<%@include file="/view/header_user.jsp" %>
<title>Education</title>
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
                <div id="content">
                    <div id="tab-container">
                        <ul>
                            <li><a href="<%= response.encodeURL("personal_information.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_information.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("profile_picture.jsp")%>">Profile Picture</a></li>
                            <li><a href="<%= response.encodeURL("contact_info.jsp")%>">Contact Info</a></li>
                            <li class="selected"><a href="<%= response.encodeURL("education.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>


                    <div id="main-container">
                        <br><br>
                        <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
                            <table cellspacing="5" border="0">
                                <tr>
                                    <td align="left" width="150">Institution: </td>
                                    <td><input type="text" name="institution" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Degree: </td>
                                    <td><input type="text" name="degree" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Major: </td>
                                    <td><input type="text" name="major" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Graduation: </td>
                                    <td>
                                        <select id="graduationYear" name="graduationYear">
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>                    
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                            <option value="2005">2005</option>
                                            <option value="2004">2004</option>
                                            <option value="2003">2003</option>
                                            <option value="2002">2002</option>
                                            <option value="2001">2001</option>
                                            <option value="2000">2000</option>
                                            <option value="1999">1999</option>
                                            <option value="1998">1998</option>
                                            <option value="1997">1997</option>
                                            <option value="1996">1996</option>
                                            <option value="1995">1995</option>
                                            <option value="1994">1994</option>
                                            <option value="1993">1993</option>
                                            <option value="1992">1992</option>
                                            <option value="1991">1991</option>
                                            <option value="1990">1990</option>
                                            <option value="1989">1989</option>
                                            <option value="1988">1988</option>
                                            <option value="1987">1987</option>
                                            <option value="1986">1986</option>
                                            <option value="1985">1985</option>
                                            <option value="1984">1984</option>
                                            <option value="1983">1983</option>
                                            <option value="1982">1982</option>
                                            <option value="1981">1981</option>
                                            <option value="1980">1980</option>
                                            <option value="1979">1979</option>
                                            <option value="1978">1978</option>
                                            <option value="1977">1977</option>
                                            <option value="1976">1976</option>
                                            <option value="1975">1975</option>
                                            <option value="1974">1974</option>
                                            <option value="1973">1973</option>
                                            <option value="1972">1972</option>
                                            <option value="1971">1971</option>
                                            <option value="1970">1970</option>
                                        </select>
                                    </td>
                                    <td><input type="submit" value="Add"></td>
                                </tr>

                                <tr>

                                    <td colspan="3"><hr></td>

                                </tr>

                                <tr>
                                    <td align="left" width="150">Institution: </td>
                                    <td><input type="text" name="institution" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Degree: </td>
                                    <td><input type="text" name="degree" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Major: </td>
                                    <td><input type="text" name="major" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <td align="left">Graduation: </td>
                                    <td>
                                        <select id="graduationYear" name="graduationYear">
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>                    
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                            <option value="2005">2005</option>
                                            <option value="2004">2004</option>
                                            <option value="2003">2003</option>
                                            <option value="2002">2002</option>
                                            <option value="2001">2001</option>
                                            <option value="2000">2000</option>
                                            <option value="1999">1999</option>
                                            <option value="1998">1998</option>
                                            <option value="1997">1997</option>
                                            <option value="1996">1996</option>
                                            <option value="1995">1995</option>
                                            <option value="1994">1994</option>
                                            <option value="1993">1993</option>
                                            <option value="1992">1992</option>
                                            <option value="1991">1991</option>
                                            <option value="1990">1990</option>
                                            <option value="1989">1989</option>
                                            <option value="1988">1988</option>
                                            <option value="1987">1987</option>
                                            <option value="1986">1986</option>
                                            <option value="1985">1985</option>
                                            <option value="1984">1984</option>
                                            <option value="1983">1983</option>
                                            <option value="1982">1982</option>
                                            <option value="1981">1981</option>
                                            <option value="1980">1980</option>
                                            <option value="1979">1979</option>
                                            <option value="1978">1978</option>
                                            <option value="1977">1977</option>
                                            <option value="1976">1976</option>
                                            <option value="1975">1975</option>
                                            <option value="1974">1974</option>
                                            <option value="1973">1973</option>
                                            <option value="1972">1972</option>
                                            <option value="1971">1971</option>
                                            <option value="1970">1970</option>
                                        </select>
                                    </td>
                                    <td><input type="submit" value="Add"></td>
                                </tr>


                                <tr>
                                    <td>&nbsp;</td>
                                    <td><br><input type="submit" value="Cancel"><input type="submit" value="Save"></td>
                                    <td>&nbsp;</td>
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
<%@include file="footer.jsp" %>