<%@include file="header_user.jsp" %>
<title>Profile Photos</title>
        <script type="text/javascript" src="../scripts/index.js"></script>
        <script type="text/javascript" src="../scripts/demo.js"></script>
        <script type="text/javascript" src="../scripts/jquery.color.js"></script>
        <script type="text/javascript" src="../scripts/jquery-1.4.1.js"></script>
        <script type="text/javascript" src="../scripts/jquery-ui-1.7.2.min.js"></script>

        <link rel="stylesheet" type="text/css" href="../styles/demo.css" />
        <link rel="stylesheet" type="text/css" href="../styles/index.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="../styles/css.css" />
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

        
                <div id="content">
            <div id="tab-container">
                <ul>
                    <li class="selected"><a href="personal_information.jsp">Personal Info</a></li>
                    <li><a href="work_information.jsp">Work Info</a></li>
                    <li><a href="profile_picture.jsp">Profile Picture</a></li>
                    <li><a href="contact_info.jsp">Contact Info</a></li>
                    <li><a href="education.jsp">Education</a></li>
                    <li><a href="account_info.jsp">Account Info</a></li>
                </ul>
            </div>
            <div id="main-container">


        <div div style="width:600px; float: left; border: solid #C6930A; padding: 10px;">



            <table  align="center" cellspacing="5" border="0">
                <tr>
                    <td align="left"><img src="../images/profile_image.jpg"></td>
                    <td align="left"><img src="../images/profile_image.jpg"></td>
                    <td align="left"><img src="../images/profile_image.jpg"></td>
                </tr>


            </table>
        </div>
<%@include file="footer.jsp" %>