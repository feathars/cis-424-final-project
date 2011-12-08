<title>Sign Up</title>
<div id="container">
    <%@include file="header_intro.jsp" %>
    <br><br>
    <div id="box">
        <h2>Sign Up</h2>
        <%@include file="error.jsp" %>
        <form action="<%= response.encodeURL(request.getContextPath() + "/SignUp")%>" method="post">
            <table width="100%" cellpadding="2px">
                <tr><td colspan="2">* Indicates required field.</td></tr>
                <tr><td colspan="2"><!-- Please fill in the required fields.--></td> </tr>
                <tr>
                    <td class="left_align"><b>First Name *</b></td>
                    <td class="left_align"><input type="text" name="firstName" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Last Name *</b></td>
                    <td class="left_align"><input type="text" name="lastName" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Last Name on Diploma</b></td>
                    <td class="left_align"><input type="text" name="lastNameOnDiploma" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Email *</b></td>
                    <td class="left_align"><input type="text" name="email" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Password *</b></td>
                    <td class="left_align"><input type="password" name="password" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Confirm Password *</b></td>
                    <td class="left_align"><input type="password" name="confirmPassword" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Major *</b></td>
                    <td class="left_align"><input type="text" name="major" size="25"/></td>
                </tr>
                <tr>
                    <td class="left_align"><b>Highest Degree at CPP *</b></td>
                    <td class="left_align">
                        <select name="degree">
                            <option> - Degree - </option>
                            <option value="BS">BS</option>
                            <option value="BA">BA</option>
                            <option value="MSBA">MSBA</option>
                            <option value="MBA">MBA</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="left_align"><b>Graduation Year *</b></td>
                    <td class="left_align"><%@include file="dropYears.jsp" %></td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td class="left_align"><b>Disclosure:</b></td>
                </tr>
                <tr><td colspan="2" class="left_align">In order to complete your registration you validate that you are entering personal information
                        for yourself and your personal information will be sent for processing on our systems located in 
                        Pomona, California, USA. Checking this checkbox signifies your acceptance of the Terms and 
                        Privacy Policy and your explicit consent to CIS department, the College of Business and the Cal Poly
                        University, Pomona to use your information for future contact regarding University events.</td></tr>
                <tr><td colspan="2" class="center_align"><input name="accept" type="checkbox" value="true"/> I Accept</td></tr>
            </table>
            <input type="button" value="Cancel" onclick="window.location.href='home.jsp'"/>
            <input type="submit" value="Sign Up" style="margin-top: 10px;"/>
        </form>
    </div>
    <br><br><br>
    <%@include file="footer.jsp" %>