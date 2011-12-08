<%@include file="header_user.jsp" %>
<title>Profile No Friends</title>
        <script type="text/javascript" src="../scripts/index.js"></script>
        <script type="text/javascript" src="../scripts/demo.js"></script>
        <script type="text/javascript" src="../scripts/jquery.color.js"></script>
        <script type="text/javascript" src="../scripts/jquery-1.4.1.js"></script>
        <script type="text/javascript" src="../scripts/jquery-ui-1.7.2.min.js"></script>

        <link rel="stylesheet" type="text/css" href="../styles/index.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="../styles/css.css" />
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

                <td style="text-align: left;" >
                <form action="userInfoServlet" method="post">
                <input type="submit" value="Send Friend Request">
                </form>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                </table>
                <br><br>
                       <font style="margin: auto; font-size: 30px;" > You are not this person's friend yet. </font>
<%@include file="footer.jsp" %>