<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Đăng ký người dùng</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .register-container {
            max-width: 450px;
            margin: 60px auto;
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
            margin-bottom: 16px;
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

        .message {
            text-align: center;
            margin-top: 10px;
            color: red;
        }

        .success {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-container">
            <h2>Đăng ký</h2>

            <div class="form-group">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Tên đăng nhập" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Mật khẩu" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Nhập lại mật khẩu" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtPhone" runat="server" placeholder="Số điện thoại" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Ngày tạo tài khoản sẽ được xử lý ở phía server, không hiển thị -->

            <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" CssClass="btn" OnClick="btnRegister_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>

            <div class="switch-link">
                Đã có tài khoản? <a href="Login.aspx">Đăng nhập</a>
            </div>
        </div>
    </form>
</body>
</html>
