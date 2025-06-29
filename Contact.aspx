<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LeaveManagementSystem.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        main {
            padding: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2, h3 {
            color: #333;
            font-size: medium;
        }

        address {
            font-style: normal;
            line-height: 1.8;
            color: #444;
            margin-bottom: 20px;
        }

        a {
            color: #007acc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>Contact the Developer</h3>

        <p>
            If you have any queries, suggestions, or feedback regarding the Leave Management System, feel free to get in touch.
        </p>

        <address>
            <strong>Name:</strong> Theressa Kondapalli<br />
            <strong>Mobile:</strong> 7671868827<br />
            <strong>Email:</strong> <a href="kondapallidevi66@gmail.com">kondapallidevi66@gmail.com</a>
        </address>

        <p>
            I'm open to ideas and happy to help improve the application. Thank you for using this system!
        </p>
    </main>
</asp:Content>
