<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchBook.aspx.cs" Inherits="Library_Management_System_App.searchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #FFFFFF;
            background-color: #6699FF;
        }
        .auto-style7 {
            height: 24px;
            text-align: left;
        }
        .auto-style9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style10 {
            height: 24px;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            text-align: right;
            width: 458px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style15 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style16 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style17 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            text-align: center;
            width: 459px;
        }
        .auto-style18 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            height: 25px;
        }
    .auto-style19 {
        text-align: center;
        height: 31px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style6">
        <tr>
            <td class="auto-style10">Enter Book ID</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Text="Search Book" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <br /><br />

    <div>

        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style14">
                <tr>
                    <td class="auto-style17">Book ID</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style16"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Book Name</td>
                    <td class="auto-style13">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style16"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Author Name</td>
                    <td class="auto-style13">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style16"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Book Subject</td>
                    <td class="auto-style13">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style16"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="2">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Text="Clear" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </div>

</asp:Content>
