<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Library_Management_System_App.AddAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
        border: 1px solid #FFFFFF;
    }
    .auto-style7 {
        text-align: center;
    }
    .auto-style8 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
    }
    .auto-style9 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        text-align: right;
        width: 462px;
    }
    .auto-style10 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <table class="auto-style6">
        <tr>
            <td class="auto-style9">Enter Admin Name</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Enter User ID</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Enter Password</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Text="Register" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>

    </div>
</asp:Content>
