<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Assignment1.HomePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>HomePage</title>
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
        <!--[if lt IE 9]>
	    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]--> 
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false" HorizontalAlign="Center"  Width="40%">
                    <Columns>
                        <asp:BoundField DataField="Text" />
                        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" />
                    </Columns>
               </asp:GridView>
           </div>
        </form>
    </body>
    <script src="JavaScript.js"></script>
</html>
