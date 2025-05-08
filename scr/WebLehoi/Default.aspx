<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Trang chủ lễ hội Khmer</title>
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

        .news-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 30px;
            gap: 20px;
        }

        .news-card {
            background-color: white;
            width: 280px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
            overflow: hidden;
            transition: transform 0.2s ease;
        }

        .news-card:hover {
            transform: translateY(-5px);
        }

        .news-image {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .news-content {
            padding: 15px;
        }

        .news-title {
            font-size: 16px;
            font-weight: bold;
            color: #000;
            margin-bottom: 10px;
        }

        .news-date {
            font-size: 12px;
            color: #777;
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
            __doPostBack('<%= btnLogout.UniqueID %>', '');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Nút ☰ mở menu -->
        <button id="menuBtn" type="button" class="menu-btn" onclick="openMenu()">☰</button>

        <!-- Nền mờ khi menu mở -->
        <div id="overlay" class="overlay" onclick="closeMenu()"></div>

        <!-- Menu trượt phải -->
        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeMenu()">❌</a>
            <a href="Default.aspx">Trang chủ</a>
            <a href="Login.aspx">Đăng nhập</a>
            <a href="Register.aspx">Đăng ký</a>
            <a href="#">Liên hệ</a>
            <a href="#">Tìm kiếm</a>          
        </div>

        <!-- Nút đăng xuất thật (ẩn, để __doPostBack gọi) -->
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Style="display:none;" UseSubmitBehavior="false" />

        <!-- Tiêu đề -->
        <div class="header">
            GIỚI THIỆU CÁC LỄ HỘI CỦA NGƯỜI DÂN TỘC KHMER
        </div>

        <!-- Danh sách lễ hội -->
        <div class="news-container">
            <div class="news-card">
                <img class="news-image" src="images/chol-chnam-thmay.jpg" alt="Chol Chnam Thmay" />
                <div class="news-content">
                    <div class="news-title">Lễ hội Tết Chôl Chnăm Thmây – Tết cổ truyền của người Khmer</div>
                    <div class="news-date"> Đăng nhập để xem chi tiết</div>
                </div>
            </div>

            <div class="news-card">
                <img class="news-image" src="images/ok-om-bok.jpg" alt="Ok Om Bok" />
                <div class="news-content">
                    <div class="news-title">Lễ hội Ok Om Bok – Cảm tạ thần Mặt Trăng cho mùa màng bội thu</div>
                    <div class="news-date">Đăng nhập để xem chi tiết</div>
                </div>
            </div>

            <div class="news-card">
                <img class="news-image" src="images/sene-donta.jpg" alt="Sene Donta" />
                <div class="news-content">
                    <div class="news-title">Lễ hội Sene Đôn Ta – Ngày báo hiếu tổ tiên của người Khmer</div>
                    <div class="news-date">Đăng nhập để xem chi tiết</div>
                </div>
            </div>

            <div class="news-card">
                <img class="news-image" src="images/dua-ghe-ngo.jpg" alt="Đua ghe Ngo" />
                <div class="news-content">
                    <div class="news-title">Lễ hội đua ghe Ngo – Sôi động trên sông nước miền Tây</div>
                    <div class="news-date">Đăng nhập để xem chi tiết</div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
