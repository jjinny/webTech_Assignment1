<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Assignment1.login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Admin login</title>
        <link rel="stylesheet" href="StyleSheet1.css" media="all" /> 
        <link rel="stylesheet" href="StyleSheet2.css" media="all" /> 
        <link rel="shortcut icon" href="favicon/icon.ico" type="image/x-icon"/>
        <link rel="icon" href="favicon/icon.ico"  type="image/x-icon"/>
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
                font-size: x-large;
            }
        </style>
    </head>
    <body>
        <button id="menu">Menu</button>
        <div id = "m" class="menus">
		    <ul>
			    <li><a href="HomePage.aspx">HomePage</a></li>
			    <li><a href="AddMailList.aspx">Join Mail List</a></li>
			    <li><a href="Feedback.aspx">Feedback</a></li>
                <li><a href="login.aspx">Admin Login</a></li>
		    </ul>
	    </div>
        <form id="form1" runat="server">
            <div>
                <strong><span class="auto-style1">This page is only for admin to login</span></strong><br /> 
            </div>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="AdminName"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>            
                </p>
            <p>
                <asp:RequiredFieldValidator
                                    ID="rfvUserName" runat="server" ErrorMessage="Please enter username"
                                    Display="Dynamic" SetFocusOnError="true" ForeColor="Red"
                                    ControlToValidate="txtUserName">
                </asp:RequiredFieldValidator>           
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text=" Password "></asp:Label>
                </p>
            <p>
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                </p>
            <p>
                <asp:RequiredFieldValidator
                                ID="rfvPwd" runat="server" ErrorMessage="Please enter password"
                                Display="Dynamic" SetFocusOnError="true" ForeColor="Red"
                                ControlToValidate="txtPwd">
                </asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login"
                                onclick="btnLogin_Click" />   
            </p>
        </form>
    </body>
    <script src="JavaScript.js"></script>
</html>
