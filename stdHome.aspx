<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="stdHome.aspx.cs" Inherits="Library_Management_System_App.stdHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style191 {
            text-align: center;
            font-weight: bold;
        }
        .auto-style192 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            color: #0066FF;
        }
        .auto-style193 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            color: #0066FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <h2 class="auto-style192">Welcome,</h2>
        <div class="auto-style191">

            <asp:Label ID="Label1" runat="server" CssClass="auto-style193"></asp:Label>

        </div>
    </div>
    </asp:Content>
