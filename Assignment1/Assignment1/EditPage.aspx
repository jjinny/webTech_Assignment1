<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="Assignment1.EditPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Edit Contents</title>
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
                <li><a href="EditPage.aspx">EditContents</a></li>
			    <li><a href="manage.aspx">Admin Accounts</a></li>
			    <li><a href="managefeedback.aspx">Comments&Feedbacks</a></li>
			    <li><a href="ManageEmailList.aspx">Mailing List</a></li>
                <li><a href="HomePage.aspx">Logout</a></li>
		    </ul>
	    </div>
        <form id="form1" runat="server" align="center">
            <div class="pic_image">
                <asp:Image ID="pic" runat="server" />
                Upload pictures
                <center>
                <asp:FileUpload id="pic_upload" runat="server" Width="230px" HorizontalAlign="Center"/>
                </center>
            </div>
            <div>
                <asp:Label id="lbl_pic" runat="server" class="pic_text"></asp:Label>
            </div>
            <div class="pic_label">format:jpg, .gif, .bmp,.png<br />
                <br />
                Add text
            </div>
            <div>
                <asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
            </div>
            <p>
                <asp:Button id="btn_upload" runat="server"  Text="Upload" onclick="btn_upload_Click" />
            </p>
            <asp:DataList id="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Image id="Image1" runat="server" Height="105px" ImageUrl='<%# Eval("path") %>' Width="118px" />
                    <br />
                    <asp:LinkButton id="LinkButton1" runat="server" CommandArgument='<%# Eval("path") %>' OnCommand="LinkButton1_Command"
                        OnClientClick="return confirm('Are you sure you want to delete ?')" >Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
            <p>&nbsp;</p>
        </form>
    </body>
    <script src="JavaScript.js"></script>
</html>
