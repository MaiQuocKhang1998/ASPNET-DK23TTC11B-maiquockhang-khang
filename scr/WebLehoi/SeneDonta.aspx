<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SeneDonta.aspx.cs" Inherits="SeneDonta" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lễ hội Sen Donta</title>
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
            LỄ HỘI SEN DOLTA
        </div>

        <div class="content">
            <h1>ĐẾN AN GIANG XEM ĐUA BÒ | MỪNG LỄ SEN DOLTA CỦA NGƯỜI KHMER | ĐIỂM ĐẾN THÚ VỊ</h1>

            <p>1. ĐẾN AN GIANG XEM HỘI ĐUA BÒ </p>
            <p>Tiếng nhạc dồn dập từ dàn ngũ âm vang lên và từng đôi bò tăng tốc lướt trên mặt ruộng trong ngày hội đua bò vùng Bảy Núi, An Giang.</p>
            <img src="images/sen1.jpg" alt="Hình ảnh" />
            <p>Trải nghiệm xem đua bò Bảy Núi ở An Giang chỉ cần một lần thưởng thức, ấn tượng còn mãi. Ngay sau hiệu lệnh “thả”, 2 chầm - nik (Ý nói người điều khiển bò) dùng xà - luôl (chính là gậy gỗ có tra vật nhọn ngắn ở phần đầu) chích vào lưng để thúc đôi bò tăng tốc để về đích.</p>
            <p>Từng đôi bò thường kéo theo giàn bừa lướt trên mặt ruộng sũng nước, tạo thành những chùm hoa nước lộng lẫy dưới ánh nắng mặt trời… tạo cho sân đua bò Bảy Núi thêm sắc thái náo nhiệt vang dội cả núi rừng miền biên viễn.</p>
            <img src="images/sen2.jpg" alt="Hình ảnh" />
            <p>Đó cũng chính là hình ảnh đặc trưng của đua bò Bảy Núi được diễn ra hàng năm vào dịp lễ Sen Dolta (cuối tháng 8 âm lịch). Đây là lễ cúng ông bà và để tạo phước, đồng bào dân tộc Khmer ở vùng Bảy Núi (Bao gồm cả huyện Tri Tôn và thị xã Tịnh Biên) theo  Phật giáo Nam tông thường mang bò đến cày giúp nhà chùa để chuẩn bị vụ mùa.</p>
            <p>Mỗi phum, sóc sẽ chọn đôi bò “xịn” nhất để làm việc cày bừa tốt nhất cho mùa vụ. Trong quá trình cày, các đội thi cùng nhau xem ai sẽ làm xong phần việc trước. Từ hình thức ban sơ đó, theo thời gian đua bò Bảy Núi phát triển với những quy luật chơi, khiến cho đua bò mang tính hấp dẫn ngày cao hơn, thu hút cả người Kinh, Hoa… đến thưởng thức</p>
            <p>2. MỪNG LỄ SEN DOLTA</p>
            <img src="images/sen3.jpg" alt="Hình ảnh" />
            <p>Ngày lễ Dolta truyền thống của đồng bào dân tộc Khmer gắn liền với truyền thuyết từ kinh Phật. Và ngày nay khi tổ chức lễ, đồng bào người Khmer chủ yếu làm theo truyền thống của đạo Phật, nhưng cũng dần trở thành lễ Dolta của người Khmer, chứ không còn thuần túy như trong kinh Phật nữa.</p>
            <img src="images/sen4.jpg" alt="Hình ảnh" />
            <p>Đồng bào dân tộc Khmer ở miền Tây có 3 cái Tết lớn trong năm và có ý nghĩa rất quan trọng đó là: Lễ Chol Chnam Thmay; Lễ Ok Om Bok và lễ Sen Dolta. Đối với người Khmer thì trên đây là các lễ hội lớn nhất trong năm với ý nghĩa vô cùng thiêng liêng.</p>
            <p>Theo tiếng người Khmer, “Sen” còn có nghĩa là cúng, và chữ “Dol” có nghĩa là bà, còn “ta” có nghĩa là ông. Suy ra nghĩa chung Lễ Sen Dolta là Lễ cúng Ông/Bà đã khuất. Lễ cũng khá giống với Đại lễ Vu Lan của người Kinh, nhưng Sen Dolta lại được tổ chức vào cuối tháng 8 âm lịch hàng năm. Lễ hội được tổ chức nhằm tưởng nhớ đến công ơn sinh thành của ông bà, cha mẹ, người thân, điều đó thể hiện thái độ biết ơn của con cháu đối với người đã khuất và cầu mong sự bình yên cho gia đình, người thân.</p>
            <img src="images/sen5.jpg" alt="Hình ảnh" />
            <p>Trình tự nghi lễ truyền thống Sen Dolta được tổ chức trong thời gian khoãng nửa tháng và bao gồm tổng cộng 4 nghi thức chính:</p>
            <p>1. Lễ dâng cơm vắt (Bos Bai Sen)</p>
            <p>2. Lễ cúng ông bà (Sen Dolta)</p>
            <p>3. Lễ rước ông bà (Phchum Ben)</p>
            <p>4. Lễ đưa tiễn ông bà (chun Đôn Ta)</p>
            <img src="images/sen6.jpg" alt="Hình ảnh" />
            <p>Ngày thứ nhất sẽ được diễn ra tại nhà cùng sự chứng kiến của già làng và những người thân gia đình, dòng họ. Ngày này thì lúc sáng sớm con cháu trong nhà sẽ phải tập trung lại để dọn dẹp nhà cửa, chuẩn bị chăn màn chiếu gối cho sạch sẽ và quần áo mới tươm tất chuẩn bị để rước ông bà về tham dự. Sau đó dâng mâm cơm cúng ông bà được bày lên gồm: rượu, trà, bánh, chén đũa, …</p>
            <p>Sau đó tất cả những người trong dòng họ theo thứ bậc từ cao xuống thấp, thay phiên chấp tay lạy những người quá cố. Sau 3 tuần trà và rượu, chủ nhà sẽ gắp mỗi món một ít, rót rượu và trà cho vào 4 chén cơm để đem cúng, và khi cúng xong sẽ đem đi đổ tại 4 góc rào xung quanh nhà. Ở mỗi nơi họ sẽ cắm một nén nhang để ông bà có thể về dự.</p>
            <img src="images/sen7.jpg" alt="Hình ảnh" />
            <p>Ngày thứ hai trong lễ Sen Dolta của đồng bào dân tộc Khmer cũng khá quan trọng và được tổ chức tại chùa. Lễ vật sẽ được chuẩn bị trước để dâng lên chùa bao gồm: mía, bánh tét, khoai mì, khoai từ (còn sống), …</p>
            <p>Khi đó người Khmer còn mời sư cả đến tụng kinh cầu siêu cho linh hồn tất cả mọi nhà trong phum, sóc. Và vào buổi chiều họ sẽ rước linh hồn về nhà và làm mâm cơm để cúng, mời ông bà ở lại chứng kiến cuộc sống sung túc của con cháu dòng họ.</p>
            <img src="images/sen8.jpg" alt="Hình ảnh" />
            <p>Ngày thứ ba cũng là ngày cuối cùng cúng tiễn ông bà. Gia đình vào ngày này sẽ làm một mâm cơm và đặt 4 chén cơm, 4 đôi đũa vào 4 góc bàn thờ để đưa tiễn vong linh của ông bà. Chủ nhà gắp mỗi món một ít thức ăn vào thúng để ông bà có thể mang về thế giới bên kia. Sau 3 ngày trải qua nhiều nghi lễ quan trọng, ông bà tổ tiên sẽ trở về với cõi vĩnh hằng và cầu mong cho con cháu được an vui, hạnh phúc.</p>

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