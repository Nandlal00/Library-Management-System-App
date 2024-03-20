<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Library_Management_System_App.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body{
           background-image:url("images/log.jpg");
           background-size: 100%;
       }
        .auto-style1 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: x-large;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.5);
            align-content:center;
            border-radius: 59px;
            background: #000000;
            justify-content: center;
            opacity: 0.5;
            margin: auto;
            width: 50%;
            padding: 10px;
            align-items: center;
           
        }
        .input {
            border: 2px solid #e8e8e8;
            padding: 15px;
            border-radius: 10px;
            background-color: #212121;
            font-size: small;
            font-weight: bold;
            text-align: center;
}

        .input:focus {
            outline-color: white;
            background-color: #212121;
            color: #e8e8e8;
            box-shadow: 5px 5px #888888;
}
        
            #Button1 {
 --color: #560bad;
 font-family: inherit;
 display: inline-block;
 width: 8em;
 height: 2.6em;
 line-height: 2.5em;
 margin: 20px;
 position: relative;
 overflow: hidden;
 border: 2px solid var(--color);
 transition: color .5s;
 z-index: 1;
 font-size: 17px;
 border-radius: 6px;
 font-weight: 500;
 color: var(--color);
}

#Button1:before {
 content: "";
 position: absolute;
 z-index: -1;
 background: var(--color);
 height: 150px;
 width: 200px;
 border-radius: 50%;
}

#Button1:hover {
 color: #fff;
}

#Button1:before {
 top: 100%;
 left: 100%;
 transition: all .7s;
}

#Button1:hover:before {
 top: -30px;
 left: -30px;
}

#Button1:active:before {
 background: #3a0ca3;
 transition: background 0s;
}
        
        .auto-style2 {
            color: #FFFFFF;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style2">Login</span><br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="Enter your User ID"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" class="input" placeholder="Enter your password!" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
