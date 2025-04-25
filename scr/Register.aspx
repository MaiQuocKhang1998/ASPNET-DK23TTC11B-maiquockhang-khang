<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Đăng ký tài khoản</h2>
        <asp:TextBox ID="txtUsername" runat="server" Placeholder="Tên đăng nhập" /><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Mật khẩu" /><br />
        <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" OnClick="btnRegister_Click" /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" /><br />
        <a href="Login.aspx">Đã có tài khoản? Đăng nhập</a>
    </form>
</body>
</html>
