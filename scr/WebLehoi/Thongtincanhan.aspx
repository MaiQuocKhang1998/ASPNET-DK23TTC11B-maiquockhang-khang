<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thongtincanhan.aspx.cs" Inherits="Thongtincanhan" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Thông tin cá nhân</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f0f0;
            padding: 30px;
        }

        .info-container {
            background-color: white;
            max-width: 600px;
            margin: auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #0b4d6d;
        }

        .info-row {
            margin-bottom: 15px;
        }

        .info-label {
            font-weight: bold;
            display: inline-block;
            width: 180px;
        }

        .info-value {
            display: inline-block;
        }

        .back-btn {
            display: block;
            text-align: center;
            margin-top: 30px;
            background-color: #0b4d6d;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .back-btn:hover {
            background-color: #11688e;
        }
    </style>
</head>
<body>
    <div class="info-container">
        <h2>Thông tin cá nhân</h2>
        <div class="info-row">
            <span class="info-label">Tên đăng nhập:</span>
            <span class="info-value"><asp:Label ID="lblUsername" runat="server"></asp:Label></span>
        </div>
        <div class="info-row">
            <span class="info-label">Email:</span>
            <span class="info-value"><asp:Label ID="lblEmail" runat="server"></asp:Label></span>
        </div>
        <div class="info-row">
            <span class="info-label">Số điện thoại:</span>
            <span class="info-value"><asp:Label ID="lblPhone" runat="server"></asp:Label></span>
        </div>
        <div class="info-row">
            <span class="info-label">Ngày tạo tài khoản:</span>
            <span class="info-value"><asp:Label ID="lblCreateDate" runat="server"></asp:Label></span>
        </div>

        <!-- Nút trở về trang chủ -->
        <a href="Trangchu.aspx" class="back-btn">Trở về trang chủ</a>
    </div>
</body>
</html>
