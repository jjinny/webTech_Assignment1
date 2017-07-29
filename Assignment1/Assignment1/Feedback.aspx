<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Assignment1.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Comments&Feedback</title>
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
        <style type="text/css">
            .auto-style1 {
                color: #000099;
                font-size: x-large;
            }
        </style>
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
        <div class="auto-style1">
            <strong>Please write your comments or feedback</strong>
        </div>
            <p>
                <asp:Label ID="comments" runat="server" Text="Comments:"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
                <asp:Label ID="feedbacks" runat="server" Text="Feedback"></asp:Label>
            <p>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </form>
    </body>
    <script src="JavaScript.js"></script>
</html>
