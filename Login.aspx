<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LeaveManagementSystem.Login" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .login-container {
            max-width: 400px;
            margin: 60px auto;
            background: #f7f9fc;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }
        .login-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }
        .input-field {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }
        .input-field:focus {
            border-color: #007bff;
            outline: none;
        }
        .btn-login {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s;
        }
        .btn-login:hover {
            background-color: #0056b3;
        }
        #<%= lblMessage.ClientID %> {
            display: block;
            margin-bottom: 20px;
            color: red;
            font-weight: 600;
            text-align: center;
        }
    </style>

    <div class="login-container">
        <h2>Login</h2>
        <asp:Label ID="lblMessage" runat="server" />
        
        <asp:Label ID="lblUsername" runat="server" Text="Username:" AssociatedControlID="txtUsername" />
        <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" />
        
        <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword" />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field" />
        
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn-login" />
    </div>
</asp:Content>
