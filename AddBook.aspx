<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="Library_Management_System_App.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #FFFFFF;
            background-color: #6699FF;
        }
        .auto-style7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            text-align: right;
            width: 449px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style6">
        <tr>
            <td class="auto-style8">Book ID</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Book Name</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Author Name</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Book Subject</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="Add Book" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
