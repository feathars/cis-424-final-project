<div id="container">
    <%@include file="header_intro.jsp" %>
    <title>Sign Up</title>
    <br><br>
    <div id="box">
        <table width="100%" cellpadding="2px"><tr><td colspan="2"><h2>Sign Up</h2></td>
            <tr><td colspan="2">* Indicates required field.</td></tr>
            <tr><td colspan="2"><!-- Please fill in the required fields.--></td> </tr>
            <tr>
                <td class="left_align">First Name * </td>
                <td class="right_align"><input type="text" name="first_name" size="25"></input></td>
            </tr>
            <tr>
                <td class="left_align">Last Name * </td>
                <td class="right_align"><input type="text" name="last_name" size="25"></input></td>
            </tr>
            <tr>
                <td class="left_align">Last Name in Diploma </td>
                <td class="right_align"><input type="text" name="last_name" size="25"></input></td>
            </tr>
            <tr>
                <td class="left_align">Email *</td>
                <td class="right_align"><input type="text" name="last_name" size="25"></input></td>
            </tr>
            <tr>
                <td class="left_align">Password * </td>
                <td class="right_align"><input type="text" name="last_name" size="25"></input></td>
            </tr>
            <tr>
                <td class="left_align">Confirm Password * </td>
                <td class="right_align"><input type="text" name="last_name" size="25"></input></td>
            </tr>
            <tr>
                <td class="left_align">Highest Degree at CPP *</td>
                <td class="left_align">
                    <select name="Degree">
                        <option> - Degree - </option>
                        <option value="BS">BS</option>
                        <option value="MSBA">MSBA</option>
                        <option value="MBA">MBA</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="left_align">Graduation Year * </td>
                <td class="left_align"><%@include file="dropYears.jsp" %></td>
            </tr>
            <tr>
                <td class="left_align">Major *</td>
                <td class="left_align"><%@include file="dropMajor.jsp" %></td></td>
            </tr>
            <tr>
                <td class="left_align">Disclosure:</td>
            </tr>
            <tr><td colspan="2" class="left_align">In order to complete your registration you validate that you are entering personal information
                    for yourself and your personal information will be sent for processing on our systems located in 
                    Pomona, California, USA. Checking this checkbox signifies your acceptance of the Terms and 
                    Privacy Policy and your explicit consent to CIS department, the College of Business and the Cal Poly
                    University, Pomona to use your information for future contact regarding University events.</td></tr>
            <tr><td colspan="2" class="center_align"><input name="Accept" type="checkbox" value="Accept"</td>I Accept</tr>
            <tr>
                <td class="right_align"><input type="button" value="Cancel" 
                                               onclick="window.location.href='home.jsp'" 
                                               title="Goes to Homepage" ></td>
                <td class="left_align"><input type="submit" value="Sign Up"></input></input></td>
            </tr>
        </table>    </div>
    <br></br><br></br><br></br>
    <%@include file="footer.jsp" %>
</div>