<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="LeaveManagementSystem.EmployeeDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Dashboard</title>

    <!-- BOOTSTRAP CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            padding: 20px;
        }

        .dashboard-box {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        .username-label {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 20px;
            display: block;
        }

        .btn-custom {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-8 offset-md-2 dashboard-box">

                    <h2 class="text-center text-primary mb-4">Employee Dashboard</h2>

                    <asp:Label ID="lblUsername" runat="server" CssClass="username-label text-success" />

                    <div class="mb-3">
                        <asp:Button ID="btnRequestLeave" runat="server" Text="Request Leave" CssClass="btn btn-success btn-custom" OnClick="btnRequestLeave_Click" />
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="btnLogout_Click" />
                    </div>

                    <h5 class="mt-4">Leave History</h5>
                    <div class="table-responsive">
                        <asp:GridView ID="gvLeaveHistory" runat="server" AutoGenerateColumns="true" CssClass="table table-bordered table-striped" />
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
