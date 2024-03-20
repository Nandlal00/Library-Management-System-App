<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="Library_Management_System_App.IssueBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: none;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            text-align: center;
        }
    .auto-style10 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
    }
    .auto-style11 {
        text-align: center;
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
    }
    .auto-style12 {
        text-align: center;
        height: 33px;
    }
        .auto-style13 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style14 {
            text-align: center;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style15 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table class="auto-style6">
            <tr>
                <td class="auto-style9">Book ID</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Student ID</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Date of Issued</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Date of Submission</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Text="Issue Book" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>

    </div>
    <div>

        <table class="auto-style6">
            <tr>
                <td class="auto-style11">Search Book ID</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="Search" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">&nbsp;</td>
            </tr>
            </table>

    </div>
    <div>

        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style6">
                <tr>
                    <td class="auto-style14">Student ID</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style13"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Date of Issued</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style13"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Date of Submit</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style13"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style15" OnClick="Button5_Click" Text="Update" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="clear" CssClass="auto-style13" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </div>
</asp:Content>
