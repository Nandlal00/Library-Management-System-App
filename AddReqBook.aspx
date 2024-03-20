<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddReqBook.aspx.cs" Inherits="Library_Management_System_App.AddReqBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style11 {
            height: 26px;
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            height: 26px;
            text-align: center;
            width: 546px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style14 {
            text-align: center;
            width: 546px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style15 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style16 {
            text-align: center;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table class="auto-style8">
            <tr>
                <td class="auto-style13">Book ID</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Book Name</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Author Name</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Book Subject</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" OnClick="Button2_Click" Text="Add Book" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
