<%@include file="header_user.jsp" %>
<title>Profile Information</title>
        <h1>profile_info.jsp</h1>
        <table class="example-code" cellspacing="5" border="0" bordercolor="#000000" style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

            <tr>
                <td rowspan="3" >
                    <img src="images/profile_image.jpg"><br></td>
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
                    <form action="userInfoServlet" method="post">
                        <input type="submit" value="Edit">
                    </form>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


        <div div style="width:500px; float: left; border: solid #C6930A; padding: 10px;">
            <fieldset>
                <legend>Personal Info</legend>


                <table   cellspacing="5" border="0">
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
                        <td>Cell Phone: [cell phone]</td>
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
            <fieldset>
                <legend>Work Info</legend>


                <table   cellspacing="5" border="0">
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
                        <td>Cell Phone: [cell phone]</td>
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
            <fieldset>
                <legend>Education Info</legend>


                <table  cellspacing="5" border="0" width="400">
                    <tr>
                        <td align="left">Institution: [Cal Poly Pomona]</td>
                        <td align="left">&nbsp;</td>
                    </tr>

                    <tr>
                        <td align="left">Degree: [bachelors]</td>
                        <td>Major: [CIS]</td>
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
                        <td>Major: [CIS]</td>
                    </tr>

                    <tr>
                        <td>Graduation Year: [year]</td>
                        <td>&nbsp;</td>
                    </tr>

                </table>

            </fieldset>

        </div>
    </body>
</html>
