<%@include file="header_user.jsp" %>
<title>Profile Photos</title>
        <h1>profile_photos.jsp</h1>
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


        <div div style="width:600px; float: left; border: solid #C6930A; padding: 10px;">



            <table  align="center" cellspacing="5" border="0">
                <tr>
                    <td align="left"><img src="images/profile_image.jpg"></td>
                    <td align="left"><img src="images/profile_image.jpg"></td>
                    <td align="left"><img src="images/profile_image.jpg"></td>
                </tr>


            </table>
<%@include file="footer.jsp" %>