<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CholChnamThmay.aspx.cs" Inherits="CholChnamThmay" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lễ hội Chôl Chnăm Thmây</title>
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
            <img src="images/chol-chnam-thmay.jpg" alt="Hình ảnh Chool Chnăm Thmăy " width="1500" height="600" />

        </div>

        <div class="content">
            <h1 style="text-align: center;">Tết Chôl Chnăm Thmây - Lễ hội lớn, nét văn hóa đặc sắc của đồng bào Khmer</h1>
            <p>Tết Chôl Chnăm Thmây của đồng bào Khmer thường diễn ra vào khoảng giữa tháng tư dương lịch hằng năm, thể hiện ước vọng một Năm mới mưa thuận gió hòa, mùa màng bội thu. Năm nay Tết Chôl Chnăm Thmây diễn ra từ ngày 14 đến 16/4/2023 dương lịch.</p>
            <img src="images/chol-chnam-thmay-1.jpg" alt="Hình ảnh Chool Chnăm Thmăy " />

            <p>Theo nông lịch Khmer, đây chính là giai đoạn nông nhàn gần như tuyệt đối, vì là cao điểm của mùa khô, lúa mùa đã thu hoạch xong, mọi hoạt động trồng trọt, chăn nuôi đều tạm dừng lại để chờ những cơn mưa đầu mùa.

            <p> Do mang ý nghĩa chào đón mùa mưa và mùa màng mới và là lễ hội lớn nhất trong năm nên ngày xưa Tết Năm mới của đồng bào Khmer kéo dài từ 10-15 ngày. Những thập niên gần đây, trong xu thế đơn giản hóa lễ hội nói chung, lễ hội này chỉ còn 3 ngày (chưa kể công việc chuẩn bị trong nhiều ngày trước đó).

            <p>Nếu như tiết thanh minh là dịp người Việt và Hoa hướng về quá khứ để tưởng nhớ tổ tiên và thân nhân đã khuất, chăm sóc, sửa sang mồ mả thì đồng bào Khmer tổ chức Tết Chôl Chnăm Thmây với tâm thức vừa hướng về quá khứ vừa hướng tới tương lai. 

            <p>Trong khi người Việt và Hoa ăn Tết Năm mới vào lúc kết thúc vụ mùa thì đồng bào Khmer lại ăn Tết Năm mới vào lúc chuẩn bị khởi đầu vụ mùa.

            <p>Đối với người Khmer, ngoài ý nghĩa đón mừng Năm mới, Tết Chôl Chnăm Thmây còn có ý nghĩa chấm dứt thời kỳ nắng hạn, bước sang thời kỳ có nước trời dồi dào để chuẩn bị cho vụ làm mùa mới.

            <p>Điều này thể hiện cá tính chất phác mà phóng khoáng, lạc quan cao độ, sẵn sàng vượt qua khó khăn, luôn hướng tới tương lai của đồng bào Khmer.</p>
            <style>
  .gallery {
    display: grid;
    grid-template-columns: repeat(2, 1fr); /* 2 cột, bạn có thể thay đổi thành 3, 4 tùy theo mong muốn */
    gap: 20px; /* khoảng cách giữa các ảnh */
    max-width: 1300px;
    margin: auto;
  }

  .gallery figure {
    margin: 0;
    text-align: center;
    border: 1px solid #ccc;
    padding: 10px;
    background-color: #f9f9f9;
  }

  .gallery img {
    width: 100%;
    height: auto;
    aspect-ratio: 1 / 1; /* đảm bảo hình vuông */
    object-fit: cover;
  }

  .gallery figcaption {
    margin-top: 10px;
    font-size: 14px;
    color: #333;
  }
</style>

<div class="gallery">
  <figure>
    <img src="images/thieunukhmer.jpg" alt="Thiếu nữ Khmer" />
    <figcaption>Thiếu nữ Khmer trong trang phục truyền thống.</figcaption>
  </figure>

  <figure>
    <img src="images/banh.jpg" alt="Một món bánh trong bữa ăn ngày Tết của đồng bào Khmer." />
    <figcaption>Món bánh truyền thống ngày Tết của đồng bào Khmer.</figcaption>
  </figure>

  <figure>
    <img src="images/trangtri.jpg" alt="Sư sãi và đồng bào Khmer trang trí trong khuôn viên chùa." />
    <figcaption>Người Khmer trang trí chùa đón Tết cổ truyền.</figcaption>
  </figure>

  <figure>
    <img src="images/chua serey Kaydal.jpg" alt="Chùa Serey Kandal trang trí đón năm mới." />
    <figcaption>Chùa Serey Kandal (Vĩnh Phước) trang trí đón mừng năm mới.</figcaption>
  </figure>
</div>
            <p><strong>- Ngày thứ nhất - Chôl Sangkran Thmây:</strong> lễ rước “Maha Sangkran mới” hay còn gọi là lễ “rước Đại lịch.”</p>

<p>Trong ngày Tết đầu tiên, người Khmer sẽ chọn giờ tốt nhất trong ngày, tắm gội sạch sẽ, mặc quần áo đẹp, trang trọng và lịch sự, mang theo lễ vật nhang đèn vào chùa làm lễ rước Đại lịch “Maha Sangkran”, đồng thời diễu hành 3 vòng xung quanh chính điện để đón chào Têvôđa.</p>

<p>Dưới sự hướng dẫn nghi lễ của vị Achar (cư sĩ - thành viên ban quản trị chùa) được tôn kính nhất trong chùa, tất cả cùng cầu nguyện, mong Năm mới Têvôđa về hộ trì cho mọi người luôn được ấm no, hạnh phúc. Sau đó là lễ Phật.</p>

<p>Tối đến, các trò chơi dân gian cùng các vũ điệu như hát, múa dukê, robăm, ramvông... được mọi người thưởng ngoạn và tham gia rất náo nhiệt.</p>

             <img src="images/hinh 5.jpg" alt="Hình ảnh Chool Chnăm Thmăy " />
           <p><strong>- Ngày thứ hai - Wonbơf</strong> (năm nhuận tổ chức 2 ngày): lễ “dâng cơm” và “đắp núi cát.”</p>
           <p>Mọi người lên chùa làm lễ dâng cơm sáng và trưa cho các vị sư. Theo phong tục của người Khmer, vào các ngày lễ, Tết, mọi người tỏ lòng thành tâm tín ngưỡng bằng cách mang cơm, thức ăn và các loại bánh đến cho các sư sãi.</p>
           <p>Đáp lại, các nhà sư sẽ làm lễ tạ ơn những người đã làm ra hạt gạo, đã trồng trọt, chăn nuôi, tạo cho cuộc sống ấm no, đầy đủ. Sau khi làm lễ đưa thức ăn đến cho linh hồn những người đã khuất, các nhà sư làm lễ chúc phúc cho những người đã có lòng mang lễ vật đến cúng chùa.</p>
           <p>Buổi chiều, theo sự hướng dẫn của vị Achar, người ta làm lễ “Đắp núi cát” (Puôn phnôm khsach) ngay tại khuôn viên chùa để mong gặp được điều lành. Tập tục này gắn với thuật cầu mưa của người xưa.</p>
 <img src="images/hinh 6.jpg" alt="Hình ảnh Chool Chnăm Thmăy " />
    
    <p><strong>- Ngày thứ ba - Lơm săk:</strong> còn gọi là ngày Lễ tắm Phật.</p>

<p>Vào ngày này, các phật tử Khmer mang thức ăn và hoa quả đến chùa từ sớm để dâng cho các vị sư. Sau khi thọ thực xong, thì các nghi lễ tắm Phật chính thức bắt đầu.</p>

<p>Các nhà sư dùng những cành hoa để vẩy những giọt nước tinh khiết có ướp hương hoa thơm ngát lên tượng Phật. Trong làn khói hương, người Khmer thành tâm khấn nguyện cầu mong Trời Phật gia hộ cho dân làng được dồi dào sức khỏe, ruộng rẫy tốt tươi và được mùa. Họ cũng cầu Têvôđa hộ trì cho phum, sóc an lành, mọi người tai qua nạn khỏi và đạt thành những điều ước nguyện.</p>

<p>Tiếp theo đó là lễ Băngskôl (cầu siêu). Các vị sư được mời đến tháp lưu giữ hài cốt của những người quá cố để cầu kinh cho linh hồn họ được siêu thoát.</p>

<p>Đến trưa, mọi người về nhà làm lễ tắm tượng Phật thờ trong từng gia đình, rồi chúc mừng ông bà, cha mẹ và dâng bánh để tạ ơn. Cũng có khi họ tổ chức lễ tắm ông bà, cha mẹ, gọi là để báo hiếu.</p>

<p>Trong ba ngày Tết Chôl Chnăm Thmây, bà con còn đi thăm hỏi, mừng tuổi Năm mới cho nhau, chúc nhau sức khỏe, cuộc sống yên vui, phát đạt. Tối đến, nhiều hoạt động như thả diều, đánh quay lửa...; các cụ già kể chuyện thần thoại, cổ tích cho con cháu; thanh niên trai gái tham gia các cuộc hát đối đáp aday, hát dukê, diễn roban, múa ramvông, romxaravan, múa trống xàdăm...</p>

<p>Ngoài dấu ấn Phật giáo đậm nét, Tết Năm mới của đồng bào Khmer còn thấy dấu ấn của đạo Bàlamôn qua việc người dân rất chú trọng cúng dường chư thiên bằng nhiều món hoa quả khác nhau theo từng ngày trong 3 ngày Tết này.</p>

<p>Đây cũng là dịp đồng bào tưởng nhớ và cúng bái tổ tiên, cúng dường các sư và thỉnh các nhà sư tụng kinh nơi tháp cốt để cầu siêu cho người thân đã khuất.</p>
         <img src="images/hinh 7.jpg" alt="Hình ảnh Chool Chnăm Thmăy " />




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