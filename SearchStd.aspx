<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchStd.aspx.cs" Inherits="Library_Management_System_App.SearchStd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        font-size: x-large;
        text-align: center;
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
        text-align: center;
        width: 470px;
    }
    .auto-style12 {
        width: 100%;
        border: 1px solid #FFFFFF;
    }
    .auto-style13 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            text-align: center;
            width: 445px;
        }
        .auto-style14 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            text-align: center;
            width: 445px;
            height: 25px;
        }
        .auto-style15 {
            text-align: center;
            height: 25px;
        }
    .auto-style16 {
        height: 18px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="auto-style6">
    Search Student</p>
<table class="auto-style7">
    <tr>
        <td class="auto-style10">Enter Student Roll No.</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="2">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Text="Search" OnClick="Button2_Click" />
        </td>
    </tr>
</table>
    <br />
    <div>

        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style12">
                <tr>
                    <td class="auto-style14">Student Name</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Book ID</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style9">-</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Issued Book</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style16">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style9" Text="clear" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </div>

</asp:Content>
