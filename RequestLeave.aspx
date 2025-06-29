<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestLeave.aspx.cs" Inherits="LeaveManagementSystem.RequestLeave" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 25px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #333;
        }

        input[type="date"],
        textarea,
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
        }

        .submit-button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-button:hover {
            background-color: #2980b9;
        }

        #lblMessage {
            display: block;
            margin-bottom: 15px;
            text-align: center;
            font-weight: bold;
        }

        @media (max-width: 600px) {
            .form-container {
                padding: 15px;
            }

            input[type="date"],
            textarea {
                font-size: 15px;
            }

            .submit-button {
                font-size: 15px;
            }
        }
    </style>

    <div class="form-container">
        <h2>Request Leave</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

        <label for="txtFromDate">Start Date:</label>
        <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date" />

        <label for="txtToDate">End Date:</label>
        <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" />

        <label for="txtReason">Reason:</label>
        <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="4" Columns="40" />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit Leave Request" CssClass="submit-button" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
