<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="stdIssued.aspx.cs" Inherits="Library_Management_System_App.stdIssued" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style22 {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #FFFFFF;
    }
    .auto-style23 {
        text-align: center;
    }
    .auto-style24 {
        text-align: center;
        font-family: Arial, Helvetica, sans-serif;
    }
        .auto-style191 {
            font-family: Arial, Helvetica, sans-serif;
            color: #0066FF;
        }
        .auto-style192 {
            text-align: center;
            height: 34px;
            margin-top: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style22">
                <tr>
                    <td class="auto-style24"><strong>Book ID</strong></td>
                    <td class="auto-style23"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>Book Name</strong></td>
                    <td class="auto-style23"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>Book Author</strong></td>
                    <td class="auto-style23"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>Book Subject</strong></td>
                    <td class="auto-style23"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style17"></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </asp:Panel>

    </div>
    <div>
        <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style192">
                <span class="auto-style191"><strong>Not Issued Any Book!</strong></span></div>

        </asp:Panel>
    </div>
</asp:Content>
