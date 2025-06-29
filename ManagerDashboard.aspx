<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerDashboard.aspx.cs" Inherits="LeaveManagementSystem.ManagerDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager Dashboard</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f0f2f5;
            padding: 20px;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .table-wrapper {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .btn {
            margin: 2px;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-success {
            background-color: #4CAF50;
            color: white;
        }

        .btn-danger {
            background-color: #f44336;
            color: white;
        }

        .logout {
            text-align: right;
            margin-bottom: 15px;
        }

        .logout input {
            padding: 6px 12px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 4px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .gridview th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logout">
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>

        <h2>Manager Dashboard</h2>

        <div class="table-wrapper">
            <asp:GridView ID="gvAllRequests" runat="server" AutoGenerateColumns="False"
                DataKeyNames="RequestID" OnRowCommand="gvAllRequests_RowCommand" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="RequestID" HeaderText="Request ID" />
                    <asp:BoundField DataField="FullName" HeaderText="Employee Name" />
                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="Reason" HeaderText="Reason" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                    <asp:BoundField DataField="ManagerRemarks" HeaderText="Remarks" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="Approve" CommandArgument='<%# Eval("RequestID") %>' CssClass="btn btn-success" />
                            <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CommandArgument='<%# Eval("RequestID") %>' CssClass="btn btn-danger" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
