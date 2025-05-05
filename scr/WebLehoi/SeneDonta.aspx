<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SeneDonta.aspx.cs" Inherits="SeneDonta" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lễ hội SeneDonta</title>
        <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            background-color: #f5f5f5;
        }

        .header {
            font-size: 32px;
            font-weight: bold;
            padding: 20px;
            background-color: white;
            border-bottom: 2px solid #ccc;
            text-align: center;
        }

        .menu-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 26px;
            cursor: pointer;
            background-color: transparent;
            border: none;
            z-index: 1001;
        }

        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            top: 0;
            right: 0;
            background-color: #0b4d6d;
            overflow-x: hidden;
            transition: 0.4s;
            padding-top: 60px;
            z-index: 1002;
        }

        .sidebar a {
            padding: 16px 24px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: 0.3s;
            border-bottom: 1px solid rgba(255,255,255,0.2);
        }

        .sidebar a:hover {
            background-color: #11688e;
        }

        .sidebar .closebtn {
            position: absolute;
            top: 10px;
            right: 25px;
            font-size: 30px;
            cursor: pointer;
        }

        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.4);
            z-index: 1000;
        }

        .content {
            width: 80%;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            margin-top: 20px;
        }

        img {
            max-width: 100%;
            height: auto;
            margin: 20px 0;
        }

        .comment-box {
            margin-top: 40px;
            text-align: left;
        }

        .comment-box textarea, .comment-box input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
            box-sizing: border-box;
        }

        .comment-box input[type="submit"] {
            padding: 10px 20px;
            background-color: #0b4d6d;
            color: white;
            border: none;
            cursor: pointer;
        }

        .comment-box input[type="submit"]:hover {
            background-color: #11688e;
        }

        .comment {
            background-color: #f0f0f0;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
        }

        .comment strong {
            color: #333;
        }
    </style>

    <script type="text/javascript">
        function openMenu() {
            document.getElementById("mySidebar").style.width = "250px";
            document.getElementById("menuBtn").style.display = "none";
            document.getElementById("overlay").style.display = "block";
        }

        function closeMenu() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("menuBtn").style.display = "block";
            document.getElementById("overlay").style.display = "none";
        }

        function logout() {
            __doPostBack('btnLogout', '');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label ID="lblUsername" runat="server" CssClass="menu-btn" Style="right: 70px;" PostBackUrl="Thongtincanhan.aspx"></asp:Label>
        <button id="menuBtn" type="button" class="menu-btn" onclick="openMenu()">☰</button>
        <div id="overlay" class="overlay" onclick="closeMenu()"></div>

        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeMenu()">❌</a>
            <a href="TrangChu.aspx">Trang chủ</a>
            <a href="Thongtincanhan.aspx">Thông tin cá nhân</a>
            <a href="#">Tìm kiếm</a>
            <a href="#">Liên hệ</a>
            <a href="javascript:void(0)" id="btnLogout" onclick="logout()">Đăng xuất</a>
        </div>

        <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click" Style="display:none;" />

        <div class="header">
            LỄ HỘI OK OM BOK
        </div>

        <div class="content">
            <h1>Lễ hội Ok Om Bok – Cảm tạ thần Mặt Trăng</h1>

            <p>Nội dung 1 về lễ hội Ok Om Bok...</p>
            <img src="images/ok-om-bok-1.jpg" alt="Hình ảnh Ok Om Bok 1" />

            <p>Nội dung 2 về các hoạt động truyền thống...</p>
            <img src="images/ok-om-bok-2.jpg" alt="Hình ảnh Ok Om Bok 2" />

            <p>Nội dung 3 về đua ghe ngo và các nghi lễ...</p>
            <img src="images/ok-om-bok-3.jpg" alt="Hình ảnh Ok Om Bok 3" />

            <div class="comment-box">
                <h2>Bình luận</h2>
                <asp:TextBox ID="txtName" runat="server" Placeholder="Tên của bạn" />
                <br />
                <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Rows="4" Placeholder="Nội dung bình luận" />
                <br />
                <asp:Button ID="btnComment" runat="server" Text="Gửi bình luận" OnClick="btnComment_Click" />
                <br /><br />
                <asp:Repeater ID="rptComments" runat="server">
                    <ItemTemplate>
                        <div class="comment">
                            <strong><%# Eval("Ten") %>:</strong>
                            <p><%# Eval("NoiDung") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>