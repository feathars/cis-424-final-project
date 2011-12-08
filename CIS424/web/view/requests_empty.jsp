<%@include file="header_user.jsp" %>
<title>Requests (Empty)</title>
        <script type="text/javascript" src="<%= request.getContextPath()%>/scripts/index.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/scripts/demo.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery.color.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-1.4.1.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-ui-1.7.2.min.js"></script>

        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/index.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath()%>/styles/css.css" />
        <br><br><br>
      
                <table class="example-code" cellspacing="5" border="0" bordercolor="#000000" 
                       style=" margin: auto; background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                <tr>
                <td rowspan="3" >
                    <img width="175" src="<%= request.getContextPath()%>/images/profile_image.jpg"><br></td>
                <td><h2 style="text-align: left;">[Billy Bronco (Bronco)]</h2></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>

                </tr>
                <tr>
                <td style=" text-align: left;">[Mascot at Cal Poly Pomona]</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                <tr>
                <td style="text-align: left;" >
                <form action="userInfoServlet" method="post">
                <input type="submit" value="Edit Profile">
                </form>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                </table>
                <br><br>
                    <font style="margin: auto; font-size: 30px;" > You don't have any new friend requests. </font>
<%@include file="footer.jsp" %>