<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LeaveManagementSystem.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        main {
            padding: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 10px;
        }

        h3 {
            color: #555;
            margin-bottom: 15px;
        }

        p {
            color: #444;
            line-height: 1.6;
            font-size: 16px;
        }

        ul {
            margin-top: 10px;
            padding-left: 20px;
        }

        ul li {
            margin-bottom: 5px;
        }
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>About the Leave Management System</h3>
        <p>
            Our Leave Management System is designed to provide the simplest and most efficient way for employees and managers to manage leave requests. 
            Whether it's requesting time off or reviewing employee leave history, our goal is to streamline the entire process with clarity and ease of use.
        </p>

        <h3>Key Features:</h3>
        <ul>
            <li>Employee and Manager login</li>
            <li>Leave request and approval workflow</li>
            <li>Leave history tracking</li>
            <li>Admin oversight and simple dashboard navigation</li>
        </ul>

        <h3>Technologies Used:</h3>
        <ul>
            <li><strong>Frontend:</strong> ASP.NET Web Forms, HTML5, CSS3</li>
            <li><strong>Backend:</strong> C# (.NET Framework)</li>
            <li><strong>Database:</strong> Microsoft SQL Server</li>
            <li><strong>Server-Side:</strong> IIS (for deployment)</li>
        </ul>

        <p>
            We aim to keep the interface user-friendly while ensuring essential features are present for a productive working environment. 
            This system is ideal for small to medium organizations looking for a lightweight solution.
        </p>
    </main>
</asp:Content>
