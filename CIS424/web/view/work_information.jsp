<%@include file="header_user.jsp" %>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/demo.css" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/index.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Work Information</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath()%>/styles/css.css" />

<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Work Information</h1>
                <div id="content">
                    <div id="tab-container">
                        <ul> <%--url encode completed --%>
                            <li><a href="<%= response.encodeURL("personal_information.jsp")%>">Personal Info</a></li>
                            <li class="selected"><a href="<%= response.encodeURL("work_information.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("profile_picture.jsp")%>">Profile Picture</a></li>
                            <li><a href="<%= response.encodeURL("contact_info.jsp")%>">Contact Info</a></li>
                            <li><a href="<%= response.encodeURL("education.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>
                    <div id="main-container">            
                        <form action="<%= response.encodeURL("workInfoServlet")%>" method="post">
                            <table cellspacing="5" border="0">

                                <tr>
                                    <td align="left">Current Employer:</td>
                                    <td><input type="text" name="currentEmployer" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">Position:</td>
                                    <td><input type="text" name="position" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left" style="padding-top: 10px; padding-bottom: 5px;"><b>Work Address</b></td>
                                </tr>

                                <tr>
                                    <td align="left">Street:</td>
                                    <td><input type="text" name="street" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">City:</td>
                                    <td><input type="text" name="city" size="50"></td>
                                </tr>

                                <tr>
                                    <td align="left">State:</td>
                                    <td align="left"><select name="state">
                                            <option value="AL">Alabama</option>
                                            <option value="AK">Alaska</option>
                                            <option value="AZ">Arizona</option>
                                            <option value="AR">Arkansas</option>
                                            <option value="CA">California</option>
                                            <option value="CO">Colorado</option>
                                            <option value="CT">Connecticut</option>
                                            <option value="DE">Delaware</option>
                                            <option value="DC">District of Columbia</option>
                                            <option value="FL">Florida</option>
                                            <option value="GA">Georgia</option>
                                            <option value="HI">Hawaii</option>
                                            <option value="ID">Idaho</option>
                                            <option value="IL">Illinois</option>
                                            <option value="IN">Indiana</option>
                                            <option value="IA">Iowa</option>
                                            <option value="KS">Kansas</option>
                                            <option value="KY">Kentucky</option>
                                            <option value="LA">Louisiana</option>
                                            <option value="ME">Maine</option>
                                            <option value="MD">Maryland</option>
                                            <option value="MA">Massachusetts</option>
                                            <option value="MI">Michigan</option>
                                            <option value="MN">Minnesota</option>
                                            <option value="MS">Mississippi</option>
                                            <option value="MO">Missouri</option>
                                            <option value="MT">Montana</option>
                                            <option value="NE">Nebraska</option>
                                            <option value="NV">Nevada</option>
                                            <option value="NH">New Hampshire</option>
                                            <option value="NJ">New Jersey</option>
                                            <option value="NM">New Mexico</option>
                                            <option value="NY">New York</option>
                                            <option value="NC">North Carolina</option>
                                            <option value="ND">North Dakota</option>
                                            <option value="OH">Ohio</option>
                                            <option value="OK">Oklahoma</option>
                                            <option value="OR">Oregon</option>
                                            <option value="PA">Pennsylvania</option>
                                            <option value="RI">Rhode Island</option>
                                            <option value="SC">South Carolina</option>
                                            <option value="SD">South Dakota</option>
                                            <option value="TN">Tennessee</option>
                                            <option value="TX">Texas</option>
                                            <option value="UT">Utah</option>
                                            <option value="VT">Vermont</option>
                                            <option value="VA">Virginia</option>
                                            <option value="WA">Washington</option>
                                            <option value="WV">West Virginia</option>
                                            <option value="WI">Wisconsin</option>
                                            <option value="WY">Wyoming</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">Zip Code:</td>
                                    <td align="left"><input type="text" name="zipCode" size="25"></td>
                                </tr>         
                                <tr>
                                    <td align="left">Work Phone:</td>
                                    <td><input type="text" name="workPhone" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">Website:</td>
                                    <td><input type="text" name="position" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">&nbsp;</td>
                                    <td align="left"><input type=checkbox NAME="job">Looking for a new job</td>
                                </tr>        

                                <tr>
                                    <td>&nbsp;</td>
                                    <td><br><input type="submit" value="Cancel"><input type="submit" value="Save"></td>
                                </tr>
                            </table>
                        </form>
                    </div>

                    <%-- code to complete table. this table centers the entire content.--%>
            </td>
        </tr>
    </table>
</center>


