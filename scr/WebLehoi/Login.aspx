<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Đăng nhập người dùng</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .login-container {
            max-width: 400px;
            margin: 80px auto;
            padding: 30px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #0b4d6d;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            width: 100%;
            background-color: #0b4d6d;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #11688e;
        }

        .switch-link {
            text-align: center;
            margin-top: 14px;
            font-size: 14px;
        }

        .switch-link a {
            color: #0b4d6d;
            text-decoration: none;
        }

        .switch-link a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Đăng nhập</h2>

            <div class="form-group">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Tên đăng nhập" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Mật khẩu" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn" OnClick="btnLogin_Click" />

            <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>

            <div class="switch-link">
                Chưa có tài khoản? <a href="Register.aspx">Đăng ký ngay</a>
            </div>
        </div>
    </form>
</body>
</html>
