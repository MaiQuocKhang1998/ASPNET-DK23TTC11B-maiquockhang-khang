# 1. Thông tin người thực hiện:
   * Họ và tên: Mai Quốc Khang
   * Số điện thoại: 0907534247
# 2. Đề tài: Xây dựng website giới thiệu các lễ hội của người dân tộc Khmer.
  Dưới đây là hướng dẫn đầy đủ từ đầu, bao gồm cả cài đặt phần mềm cần thiết và lập trình website ASP.NET Web Forms giới thiệu các lễ hội Khmer.
________________________________________
🛠 PHẦN 1: CÀI PHẦN MỀM CẦN THIẾT
1. Cài đặt Visual Studio
* Truy cập: https://visualstudio.microsoft.com/
* Tải Visual Studio Community (miễn phí).
* Trong bước chọn workload (tải thành phần), chọn:
* ASP.NET and web development
* .NET Framework 4.x targeting packs (nếu làm Web Forms)
2. Cài SQL Server (quản lý cơ sở dữ liệu)
* Tải SQL Server Express:
* https://www.microsoft.com/en-us/sql-server/sql-server-downloads
* Sau khi cài SQL Server, cài SQL Server Management Studio (SSMS):
* https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms
________________________________________
🏗 PHẦN 2: TẠO PROJECT ASP.NET WEB FORMS
1. Mở Visual Studio → Chọn:
* Create a new project
* Tìm: ASP.NET Web Application (.NET Framework)
* Đặt tên project (ví dụ: WebLeHoi)
* Chọn: Empty + ✅ Web Forms
* Nhấn Create
________________________________________
🧱 PHẦN 3: TẠO DATABASE
1. Mở SSMS → Kết nối → Tạo database (VD: LeHoiDB)
2. Chạy SQL tạo bảng:
* sql
* Sao chép Chỉnh sửa
  ________________________________________
* Bảng Users
```python
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(100) UNIQUE,
    Password NVARCHAR(100),
    Email NVARCHAR(100),
    Phone NVARCHAR(20),
    CreateDate DATETIME
);
________________________________________
Bảng BinhLuan

 CREATE TABLE BinhLuan (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Ten NVARCHAR(100),
    NoiDung NVARCHAR(MAX),
    LeHoi NVARCHAR(50),
    ThoiGian DATETIME DEFAULT GETDATE()
 );
________________________________________
🔌 PHẦN 4: KẾT NỐI DATABASE
Trong Web.config thêm chuỗi kết nối:
xml
Sao chép Chỉnh sửa
```python
<connectionStrings>
  <add name="connStr" 
       connectionString="Data Source=.;Initial Catalog=LeHoiDB;Integrated Security=True" 
       providerName="System.Data.SqlClient" />
</connectionStrings>
⚠️ Lưu ý: Data Source=. là cho SQL Server cài mặc định, nếu máy bạn khác, sửa lại Data Source=your_server_name.

________________________________________
📄 PHẦN 5: TẠO CÁC TRANG WEB
1. Trang TrangChu.aspx:
* Giao diện chính, hiển thị 4 lễ hội.
* Có menu bên phải, hiệu ứng đóng/mở bằng JavaScript.
*	Hiển thị Session["Username"].
2. Các trang lễ hội:
*	CholChnamThmay.aspx, OkOmBok.aspx, SeneDonta.aspx, DuaGheNgo.aspx
*	Giao diện trình bày nội dung lễ hội.
*	Cuối trang có form bình luận (TextBox + Button).
*	Repeater để hiển thị bình luận từ database theo LeHoi.
3. Trang Register.aspx:
*	Form nhập: tên đăng nhập, mật khẩu, nhập lại mật khẩu, email, sđt.
*	Kiểm tra:
*	Không được bỏ trống
*	Tên đăng nhập không trùng (SELECT * FROM Users WHERE Username = @Username)
*	Mật khẩu nhập lại phải khớp
4. Trang Login.aspx:
*	Nhập tên đăng nhập và mật khẩu
*	Kiểm tra trong bảng Users
*	Nếu đúng: Session["Username"] = txtUsername.Text;
*	Nếu sai: thông báo lỗi
5. Trang ThongTinCaNhan.aspx:
*	Truy vấn thông tin từ bảng Users theo Session["Username"]
*	Hiển thị thông tin cá nhân
________________________________________
📝 PHẦN 6: CHÈN DỮ LIỆU MẪU
1. 10 người dùng mẫu:
sql
Sao chépChỉnh sửa
INSERT INTO Users (Username, Password, Email, Phone, CreateDate)
VALUES 
('user1', '123', 'u1@email.com', '0123456789', GETDATE()),
('user2', '123', 'u2@email.com', '0123456789', GETDATE()),
... -- đến user10
2. 40 bình luận (10 cho mỗi lễ hội):
sql
Sao chépChỉnh sửa
INSERT INTO BinhLuan (Ten, NoiDung, LeHoi) VALUES
('An', 'Bình luận về CholChnamThmay', 'CholChnamThmay'),
...
('Bình', 'Bình luận về OkOmBok', 'OkOmBok'),
...
-- Tương tự cho 4 lễ hội
________________________________________
✅ PHẦN 7: CHẠY THỬ VÀ KIỂM TRA
1.Nhấn Start (F5) trong Visual Studio để chạy.
2.Đăng ký tài khoản, đăng nhập → chuyển về TrangChu.aspx.
3.Click vào từng lễ hội để vào trang chi tiết.
4.Thêm bình luận → kiểm tra hiển thị.
5.Đăng xuất → quay về trang mặc định.
________________________________________
📦 TỔNG KẾT
*Chức năng	Trạng thái
*Tạo cơ sở dữ liệu	✅
*Giao diện các trang	✅
*Đăng ký + kiểm tra	✅
*Đăng nhập	✅
*Quản lý phiên Session	✅
*Bình luận từng lễ hội	✅
*Menu sidebar động	✅
*Dữ liệu mẫu	✅
