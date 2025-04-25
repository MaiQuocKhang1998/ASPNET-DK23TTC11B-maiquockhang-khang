<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FestivalDetails.aspx.cs" Inherits="FestivalDetails" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chi tiết lễ hội</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="FestivalPanel" runat="server" Visible="false">
        <h2><asp:Label ID="lblName" runat="server" /></h2>
        <img id="imgFestival" runat="server" style="width:300px;" />
        <p><asp:Label ID="lblDescription" runat="server" /></p>
    </asp:Panel>
        <p>
    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" />
        </p>
    <p><a href="Default.aspx">← Quay lại danh sách</a></p>
    </form>
</body>
</html>
