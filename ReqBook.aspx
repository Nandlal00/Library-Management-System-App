<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="ReqBook.aspx.cs" Inherits="Library_Management_System_App.ReqBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style22 {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid black;
    }
    .auto-style23 {
        font-family: Arial, Helvetica, sans-serif;
        text-align: center;
    }
    .auto-style24 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <table class="auto-style22">
        <tr>
            <td class="auto-style23"><strong>Req ID</strong></td>
            <td class="auto-style24"><strong>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Book Name</strong></td>
            <td class="auto-style24"><strong>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style17"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Book Author</strong></td>
            <td class="auto-style24"><strong>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style17"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Book Subject</strong></td>
            <td class="auto-style23"><strong>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style17"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Request" />
            </td>
        </tr>
    </table>

    </div>
</asp:Content>
