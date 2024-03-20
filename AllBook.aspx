<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllBook.aspx.cs" Inherits="Library_Management_System_App.AllBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style6">
    <asp:GridView ID="GridView1" runat="server" Height="229px" Width="70%" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="Book ID" SortExpression="BookID" />
            <asp:BoundField DataField="BookName" HeaderText="Book Name" SortExpression="BookName" />
            <asp:BoundField DataField="BookAuthor" HeaderText="Book Author" SortExpression="BookAuthor" />
            <asp:BoundField DataField="BookSubject" HeaderText="Book Subject" SortExpression="BookSubject" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=HP-PC\SQLEXPRESS;Initial Catalog=&quot;Library Management System&quot;;Integrated Security=True;" SelectCommand="SELECT * FROM [BookData] ORDER BY [BookID]"></asp:SqlDataSource>
</div>

</asp:Content>
