<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStd.aspx.cs" Inherits="Library_Management_System_App.AddStd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        font-size: x-large;
    }
    .auto-style7 {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #FFFFFF;
    }
    .auto-style8 {
        text-align: center;
    }
    .auto-style9 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
    }
    .auto-style10 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        text-align: right;
        width: 446px;
    }
    .auto-style11 {
        text-align: left;
    }
    .auto-style13 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        text-align: left;
    }
    .auto-style14 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        text-align: right;
        width: 446px;
        height: 25px;
    }
    .auto-style15 {
        text-align: left;
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="auto-style6">
    ADD STUDENT</p>
<table class="auto-style7">
    <tr>
        <td class="auto-style10">Enter Name</td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Enter Roll No</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Password</td>
        <td class="auto-style13">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="2">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Text="Add Student" OnClick="Button2_Click" />
        </td>
    </tr>
</table>

</asp:Content>
