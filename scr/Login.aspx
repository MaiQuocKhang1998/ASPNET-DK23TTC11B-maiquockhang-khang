<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Đăng nhập</h2>
        <asp:TextBox ID="txtUsername" runat="server" Placeholder="Tên đăng nhập" /><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Mật khẩu" /><br />
        <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" /><br />
        <a href="Register.aspx">Chưa có tài khoản? Đăng ký</a>
    </form>
</body>
</html>
