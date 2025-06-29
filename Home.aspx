<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LeaveManagementSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .home-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 70vh;
            padding: 30px 15px;
        }

        .home-card {
            background-color: #ffffff;
            padding: 40px 30px;
            max-width: 600px;
            width: 100%;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .home-card h2 {
            color: blue;
            font-size: 30px;
            margin-bottom: 15px;
        }

        .home-card p {
            color: #555;
            font-size: 18px;
            margin-bottom: 25px;
        }

        .home-card .username {
            font-size: 18px;
            color: #2980b9;
            font-weight: bold;
        }

        @media (max-width: 600px) {
            .home-card h2 {
                font-size: 24px;
            }

            .home-card p {
                font-size: 16px;
            }

            .home-card .username {
                font-size: 16px;
            }
        }
    </style>

    <div class="home-wrapper">
        <div class="home-card">
            <h2>Hello....Welcome to the Leave Management System</h2>
            <p>A simple and smart way to request, approve, and manage employee leaves.</p>
            <span class="username"><asp:Label ID="lblUsername" runat="server" /></span>
        </div>
    </div>
</asp:Content>
