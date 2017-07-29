<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Assignment1.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <link rel="shortcut icon" href="favicon/icon.ico" type="image/x-icon"/>
    <link rel="icon" href="favicon/icon.ico"  type="image/x-icon"/>
    <link rel="stylesheet" href="StyleSheet1.css" media="all" />
    <link rel="stylesheet" href="StyleSheet2.css" media="all" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#m").hide();
        $("#menu").click(function(){
            $("#m").toggle();
        });
    });
    </script>
</head>
<body>
     <button id="menu">Menu</button>
        <div id = "m" class="menus">
		    <ul>
			    <li><a href="HomePage.aspx">HomePage</a></li>
                <li><a href="About.aspx">About</a></li>
			    <li><a href="AddMailList.aspx">Join Mail List</a></li>
			    <li><a href="Feedback.aspx">Feedback</a></li>
                <li><a href="login.aspx">Admin Login</a></li>
		    </ul>
	    </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="About mobile business" Font-Bold="True" Font-Names="Myriad Pro" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
        </p>
    </form>
</body>
</html>
