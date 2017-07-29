<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managefeedback.aspx.cs" Inherits="Assignment1.managefeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Comments&Feedback</title>
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
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center"  Width="40%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
                <asp:BoundField DataField="feedback" HeaderText="feedback" SortExpression="feedback" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
    <script src="JavaScript.js"></script>
</html>
