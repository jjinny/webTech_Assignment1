<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageEmailList.aspx.cs" Inherits="Assignment1.ManageEmailList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mailing List</title>
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
    <div>
    
    </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MailingList]"></asp:SqlDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center"  Width="40%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
    <script src="JavaScript.js"></script>
</html>
