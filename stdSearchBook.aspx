<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="stdSearchBook.aspx.cs" Inherits="Library_Management_System_App.stdSearchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style191 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #000000;
        }
        .auto-style192 {
            text-align: center;
        }
        .auto-style193 {
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table class="auto-style191">
            <tr>
                <td class="auto-style193"><strong>Enter Book ID</strong></td>
                <td class="auto-style192">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style193">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style192">
                    <strong>
                    <asp:Button ID="Button2" runat="server" Text="Search" CssClass="auto-style17" OnClick="Button2_Click" />
                    </strong>
                </td>
            </tr>
        </table>

    </div>
    <div>

        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style191">
                <tr>
                    <td class="auto-style193"><strong>Book ID</strong></td>
                    <td class="auto-style192"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style193"><strong>Book Name</strong></td>
                    <td class="auto-style192"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style193"><strong>Book Author</strong></td>
                    <td class="auto-style192"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style193"><strong>Book Subject</strong></td>
                    <td class="auto-style192"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style193"><strong>Available</strong></td>
                    <td class="auto-style193"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style192" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style192" colspan="2"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style17" OnClick="Button3_Click" Text="Ok" />
                        </strong></td>
                </tr>
            </table>
        </asp:Panel>

    </div>
</asp:Content>
