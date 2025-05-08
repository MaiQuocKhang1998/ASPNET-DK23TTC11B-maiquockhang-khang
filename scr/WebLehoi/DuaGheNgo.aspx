<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DuaGheNgo.aspx.cs" Inherits="DuaGheNgo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lễ hội Đua Ghe Ngo</title>
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
        margin: 20px auto; /* căn giữa theo chiều ngang */
        display: block;     /* để margin auto hoạt động */
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
    .content p {
        text-align: justify;
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
            ĐÔI NÉT VỀ ĐIỂM ĐUA GHE NGO XƯA VÀ NAY Ở SÓC TRĂNG
        </div>

        <div class="content">
        
            <p>Trước đây, đua ghe Ngo ở khu vực Đồng bằng sông Cửu Long được tập trung tổ chức tại tỉnh Sóc Trăng và đã trở thành ngày hội chung của cả vùng. Hàng năm, vào ngày rằm tháng 10 âl riêng tại trung tâm Tp. Sóc Trăng lại rộn ràng với Lễ hội Oóc - om -boc - Đua ghe Ngo, thu hút rất đông người dân các tỉnh và du khách đến tham dự. Ðêm trước ngày tổ chức đua ghe dường như là một đêm không ngủ với nhiều người dân tỉnh Sóc Trăng và khách tham quan lễ hội.</p>
            <img src="images/d1.jpg" alt="Hình ảnh" />
            <p>Xưa kia, điểm đua ghe Ngo ở Sóc Trăng tổ chức đầu tiên tại Peam-kon-thô, tức Vàm Tho hay Dù Tho thuộc địa phận xã Tham Ðôn, huyện Mỹ Xuyên ngày nay. Điểm này ghe Ngo của các vùng Bạc Liêu, Kiên Giang tập trung về đều thuận lợi. Ở đây có một con sông lớn, thẳng dài, dòng nước chảy đều và cũng là nơi ngã ba sông tiếp giáp nhau thành nơi giao thương sầm uất lúc bấy giờ. Người xem tập trung đông đúc với những chiếc ghe “Cà hâu” (tức ghe bầu) và ghe “Cà chai” (tức ghe tam bản) đậu dọc cả hai bên bờ sông vui như ngày hội. Đến thời Pháp, địa điểm đua được di dời về sông Ompuyea, tức là sông Nhu Gia, xã Thạnh Phú, huyện Mỹ Xuyên để dễ bề kiểm soát an ninh. Đến thời kỳ chống Mỹ, điểm đua ghe Ngo lại được dời từ Nhu Gia về đua ở Kinh Xáng – thị xã Sóc Trăng (nay là dòng sông Maspéro, Tp. Sóc Trăng). Sau ngày giải phóng, điểm đua ghe Ngo được tổ chức trở lại ở sông Nhu Gia. Từ cuối những năm 1990 đến nay, giải đua ghe Ngo của tỉnh Sóc Trăng lại được tổ chức trên dòng sông Maspéro, nhằm đáp ứng yêu cầu của du khách, tạo điều kiện giúp mọi người đến xem dễ dàng, có nơi ăn, ở thuận tiện và thoải mái hơn.</p>
            <img src="images/d2.jpg" alt="Hình ảnh" />
            <p>Để đáp ứng về cơ sở vật chất và tôn vinh thêm tầm quan trọng của lễ hội Ooc - om - boc - Đua ghe Ngo, năm 2009 tỉnh đầu tư xây dựng hoàn thành đường đua và khán đài đua ghe Ngo phục vụ cho du khách. Đặc biệt, nhằm thiết thực chào mừng sự kiện Festival Lúa gạo Việt Nam lần thứ II tổ chức tại Sóc Trăng năm 2011, tỉnh cũng đầu tư hàng chục tỷ đồng cho xây dựng bờ kè sông Maspéro với tổng chiều dài 2 bên trên 11km, bao gồm hệ thống bờ kè, thoát nước, cây xanh,…tạo điều kiện thuận lợi cho du khách xem hội đua ghe Ngo dọc 2 bên bờ kênh này.</p>
            <p>Lễ hội Oóc - om-boc - Đua ghe Ngo đã được tỉnh đề xuất Chính phủ cho phép nâng lên thành Festival Oóc - Om - boc - Đua ghe Ngo. Ðây cũng là giải pháp để quảng bá nét văn hóa, thể thao truyền thống độc đáo của đồng bào Khmer Nam bộ trở thành một sản phẩm du lịch vô cùng hấp dẫn tương xứng với giá trị vốn có./.</p>
 

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