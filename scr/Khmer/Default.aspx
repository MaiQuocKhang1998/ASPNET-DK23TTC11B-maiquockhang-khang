<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lễ hội của người Khmer</title>
    <style>
        .btn {
            padding: 8px 16px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
            cursor: pointer;
        }
        .festival {
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }
        img {
            width: 150px;
            height: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Danh sách lễ hội của người Khmer</h1>

        <!-- Nút Đăng nhập / Đăng ký -->
        <asp:Panel runat="server" style="margin-bottom:20px;">
            <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Đăng nhập" OnClick="btnLogin_Click" />
            <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="Đăng ký" OnClick="btnRegister_Click" />
        </asp:Panel>

        <!-- Danh sách lễ hội -->
        <asp:Repeater ID="FestivalRepeater" runat="server">
            <ItemTemplate>
                <div class="festival">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                    <h3><a href='FestivalDetails.aspx?id=<%# Eval("Id") %>'><%# Eval("Name") %></a></h3>
                    <p><%# Eval("Description") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
