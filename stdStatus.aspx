<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="stdStatus.aspx.cs" Inherits="Library_Management_System_App.stdStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style22 {
        text-align: center;
    }
        .auto-style191 {
            font-family: Arial, Helvetica, sans-serif;
            color: #0066FF;
        }
        .auto-style192 {
            font-family: Arial, Helvetica, sans-serif;
            margin-left: 0px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style22">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style192" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Height="168px" Width="1208px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ReqID" HeaderText="Req ID" SortExpression="ReqID" />
                <asp:BoundField DataField="BookName" HeaderText="Book Name" SortExpression="BookName" />
                <asp:BoundField DataField="BookAuthor" HeaderText="Book Author" SortExpression="BookAuthor" />
                <asp:BoundField DataField="BookSubject" HeaderText="Book Subject" SortExpression="BookSubject" />
                <asp:BoundField DataField="ReqStatus" HeaderText="Status" SortExpression="ReqStatus" />
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
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=HP-PC\SQLEXPRESS;Initial Catalog=&quot;Library Management System&quot;;Integrated Security=True;" SelectCommand="SELECT * FROM [reqBook] ORDER BY [ReqID]"></asp:SqlDataSource>
</asp:Panel>
    </div>
    <div>
        <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style22">
                <span class="auto-style191"><strong>Not Issued Any Book!!</strong></span></div>

        </asp:Panel>
    </div>
</asp:Content>
