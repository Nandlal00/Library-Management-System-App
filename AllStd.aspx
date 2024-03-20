<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllStd.aspx.cs" Inherits="Library_Management_System_App.AllStd" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        font-size: x-large;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">

    All Student<br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="70%" meta:resourcekey="GridView1Resource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="StdName" HeaderText="Student Name" SortExpression="StdName" meta:resourcekey="BoundFieldResource1" />
                    <asp:BoundField DataField="StdRollNo" HeaderText="Student ID" SortExpression="StdRollNo" meta:resourcekey="BoundFieldResource2" />
                    <asp:BoundField DataField="Issue" HeaderText="Book Issued" SortExpression="Issue" meta:resourcekey="BoundFieldResource3" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=HP-PC\SQLEXPRESS;Initial Catalog=&quot;Library Management System&quot;;Integrated Security=True;" SelectCommand="SELECT [StdName], [StdRollNo], [Issue] FROM [StdData] ORDER BY [StdRollNo]"></asp:SqlDataSource>
            </div>

    </div>
</asp:Content>
