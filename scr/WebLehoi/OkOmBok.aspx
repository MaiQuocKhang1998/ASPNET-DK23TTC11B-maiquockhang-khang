<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OkOmBok.aspx.cs" Inherits="OkOmBok" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lễ hội Ok Om Bok</title>
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
            LỄ HỘI OK OM BOK
        </div>

        <div class="content">
            <h1>Đặc sắc lễ hội Ok Om Bok của đồng bào Khmer</h1>

            <p>Lễ hội Ok Om Bok của người Khmer tổ chức khi kết thúc vụ mùa, để bày tỏ lòng biết ơn đối với Mặt trăng</p>
            <img src="images/ok1.jpg" alt="Hình ảnh Ok Om Bok 1" />

            <p>Ok Om Bok là lễ hội truyền thống của đồng bào dân tộc Khmer Nam Bộ, được tổ chức vào dịp rằm tháng 10 âm lịch hàng năm. Lễ hội Ok Om Bok là một trong những di sản văn hóa phi vật thể cấp quốc gia đã được Bộ Văn hóa, Thể thao và Du lịch công nhận.</p>
            <p>Lễ hội Ok Om Bok còn gọi là lễ cúng Trăng (Pithi thvay pras – chanh) hay “Đút cốm dẹp”, một lễ hội dân gian lớn trong năm của người Khmer tổ chức khi kết thúc vụ mùa, để bày tỏ lòng biết ơn đối với Mặt trăng, vị thần theo tín ngưỡng của người Khmer đã giúp bảo vệ mùa màng, điều hòa thời tiết, đem lại cây trái tốt tươi, no ấm cho người dân ở phum, sóc. Đây là lễ “cúng trăng” và “tiễn thần nước” mà khó ai quên món đặc sản cốm dẹp cũng như phần “hội” với những hoạt động vui chơi bổ ích như đua ghe ngo, diễn dù kê, thi cờ ốc, thả đèn gió, thả đèn nước…</p>
            <img src="images/ok2.jpg" alt="Hình ảnh Ok Om Bok 1" />

            <p>Lễ cúng Trăng là nghi lễ chính trong lễ hội Ok Om Bok được tổ chức đúng vào đêm rằm tháng Mười âm lịch (năm nay nhằm ngày 27/11/2023) tại khuôn viên chùa, trong từng nhà dân hay tập trung tổ chức ở một nơi rộng rãi.</p>
            <p>Theo nhà nghiên cứu văn hóa Khmer, Nghệ nhân ưu tú Dương Châu Ôl, để chuẩn bị cho lễ cúng Trăng, người Khmer thường làm một chiếc cổng bằng tre có trang trí hoa lá; trên cổng giăng một dây trầu gồm 12 lá trầu cuốn tròn tượng trưng cho 12 tháng trong năm và một dây cau gồm 7 trái chẻ vỏ ra như hai cánh con ong, tượng trưng cho 7 ngày trong tuần. Ngày nay, lễ cúng đơn giản hơn, chỉ cần đem một cái bàn và bày lên đó các lễ vật cúng.</p>
            <p>“Ngoài cốm dẹp là thức cúng bắt buộc còn có trái dừa tươi, chuối, khoai lang, bánh in và trái cây… xung quanh, người ta cắm đèn cầy và nhang. Buổi tối chuẩn bị xong, mọi người trải chiếu ngồi chắp tay quay mặt về phía Mặt trăng để chờ làm lễ”, ông Châu Ôl nói.</p>
            <img src="images/ok3.jpg" alt="Hình ảnh Ok Om Bok 1" />
             <p>Đúng lúc Mặt trăng lên cao tỏa ánh sáng vằng vặc thì đốt nhang đèn, rót trà. Ở chùa Acha làm chủ lễ (tại nhà là người lớn tuổi nhất), ông khấn vái nói lên lòng biết ơn của bà con đối với Mặt trăng, xin Mặt trăng tiếp nhận những lễ vật do bà con dâng cúng; ban cho mọi người sức khỏe dồi dào, cho mưa thuận gió hòa, cho năm tới trúng mùa, cho cuộc sống no đủ, hạnh phúc.</p>
             <p>Sau khi cúng xong, chủ lễ tập trung trẻ em lại ngồi xếp bằng, chắp tay nhìn về hướng Mặt trăng, lấy cốm dẹp và các đồ cúng khác, mỗi thứ một ít đút vào miệng bọn trẻ rồi hỏi chúng mong ước gì. Bọn trẻ sẽ nói ước nguyện của mình và ông khuyên dạy chúng phải chăm ngoan, học hành giỏi giang để giúp ích cho đời…</p>
             <p>Xong lễ cúng trăng, mọi người tay bắt mặt mừng chúc nhau những điều tốt đẹp nhất, suốt đêm trai trẻ phum sóc vui chơi nhảy múa lămvông, sadăm... kết thúc lễ hội Ok Om Bok.</p>
            <p>Lễ cúng Trăng là một nét đẹp văn hóa truyền thống của người Khmer Nam Bộ. Lễ hội có ý nghĩa mừng cơm mới vào những ngày trăng sáng là dịp tưởng nhớ đến công ơn Mặt trăng, vị thần điều tiết mùa màng giúp bà con vụ mùa bội thu.</p>
            <p>Trong những ngày diễn ra lễ Ok Om Bok và dua ghe ngo truyền thống, về các phum sóc Sóc Trăng ngày nay dễ dàng cảm nhận được sự đổi thay và phát triển của người Khmer và quây quần cùng bà con nhảy múa, hát À dây, múa lâm thôn, lămvông, lămleo... cùng với âm thanh của tiếng trống sa dăm, nhạc ngũ âm làm rộn rã cả lễ hội, đây dịp bà con Khmer vui chơi sau những ngày lao động vất vả.</p>

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
