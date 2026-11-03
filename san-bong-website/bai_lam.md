# BÀI LÀM – HACKATHON 02

- **Mã đề:** 01
- **Họ tên:** Phạm Ngọc Linh
- **Lớp:** K26CNTT3
- **Link repository:** 
- **Hệ điều hành:** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```powershell
pwd
ls -Force
mv .\ghi_chu_ban_giao.txt .\docs\
mkdir backup -Force
cp .\data\dat_san_thang_10.xlsx .\backup\
rm temp_002.tmp
cd logs
ls
cd ..
Get-ChildItem -Recurse -Force
```

### Kết quả liệt kê toàn bộ dự án

```text


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
d-----         11/3/2026   2:14 PM                backup                                                                                                                            
d-----         11/3/2026   2:14 PM                data                                                                                                                              
d-----         11/3/2026   2:14 PM                docs                                                                                                                              
d-----         11/3/2026   2:14 PM                evidence                                                                                                                          
d-----         11/3/2026   2:14 PM                logs                                                                                                                              
d-----         11/3/2026   1:49 PM                web                                                                                                                               
-a----         11/3/2026   1:49 PM             76 .env                                                                                                                              
-a----         11/3/2026   2:14 PM             39 .env.example                                                                                                                      
-a----         11/3/2026   2:14 PM             13 .gitignore                                                                                                                        
-a----         11/3/2026   2:09 PM           2558 bai_lam.md                                                                                                                        
-a----         11/3/2026   2:09 PM           2558 bai_lam.truoc-khi-hoan-thanh.md                                                                                                   
-a----         11/3/2026   2:14 PM            396 README.md                                                                                                                         
-a----         11/3/2026   2:14 PM            406 tong_hop.ps1                                                                                                                      


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website\backup


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
-a----         11/3/2026   1:49 PM           6074 dat_san_thang_10.xlsx                                                                                                             


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website\data


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
-a----         11/3/2026   1:49 PM           6074 dat_san_thang_10.xlsx                                                                                                             


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website\docs


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
-a----         11/3/2026   1:49 PM            154 ghi_chu_ban_giao.txt                                                                                                              


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website\logs


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
-a----         11/3/2026   1:49 PM            956 access.log                                                                                                                        
-a----         11/3/2026   2:14 PM            315 loi_500.txt                                                                                                                       
-a----         11/3/2026   2:14 PM            460 tong_hop.txt                                                                                                                      


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website\web


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
d-----         11/3/2026   1:49 PM                images                                                                                                                            
-a----         11/3/2026   1:49 PM            590 app.js                                                                                                                            
-a----         11/3/2026   1:49 PM            529 index.html                                                                                                                        
-a----         11/3/2026   1:49 PM            460 style.css                                                                                                                         


    Directory: C:\Users\TRONG TIN\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website\web\images


Mode                 LastWriteTime         Length Name                                                                                                                              
----                 -------------         ------ ----                                                                                                                              
-a----         11/3/2026   1:49 PM           3101 logo-san-bong.png
```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```powershell
Get-Content .\logs\access.log | Select-String 'status=500' | ForEach-Object { $_.Line } > .\logs\loi_500.txt
Get-Content .\logs\loi_500.txt -TotalCount 2
```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:28:45 POST /api/thanh-toan status=500
```

### b) Lệnh đếm số dòng status=404 và kết quả

```powershell
(Get-Content .\logs\access.log | Select-String 'status=404' | Measure-Object).Count
```

```text
4
```

## 4.4. Chạy script tong_hop.ps1

### Lệnh chạy

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
.\tong_hop.ps1
```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===
2026-10-28 08:07:39 GET /tin-tuc status=404
2026-10-28 08:13:01 GET /dat-san-cu status=404
2026-10-28 08:34:07 GET /images/san-7.jpg status=404
2026-10-28 08:57:24 GET /khuyen-mai status=404
6
```

## 4.5. README.md và bảo vệ thông tin bí mật

- [x] README.md đủ heading, in đậm, in nghiêng, bảng, code block, task list và blockquote.
- [x] .gitignore có dòng `.env`.
- [x] .env.example có `DB_HOST=`, `DB_PASSWORD=`, `PAYMENT_KEY=`, để trống giá trị.

## 4.6. Kiểm tra website và báo cáo lỗi

### Bảng lỗi

| STT | Tab cần kiểm tra | Lỗi | Cách sửa |
| --- | --- | --- | --- |
| 1 | Network | Sai đường dẫn `images/logo.png` | Đổi thành `images/logo-san-bong.png` trong `index.html`. Đã sửa. |
| 2 | Console | Gọi hàm `hienThiBangGia()` chưa khai báo | Đổi thành `hienThiBangGiaSan()` trong `app.js`. Chưa sửa. |

### Bằng chứng


### Báo cáo lỗi

- **Context:** Mở trang GreenField bằng Chrome/Edge.
- **Expected:** Bảng giá hiển thị 4 sân.
- **Actual:** Bảng giá chỉ có tiêu đề.
- **Log dự kiến từ mã nguồn:** `Uncaught ReferenceError: hienThiBangGia is not defined` — cần đối chiếu Console.

### Câu tìm kiếm Google

```text
site:stackoverflow.com "ReferenceError: hienThiBangGia is not defined"
```

## 4.7. Excel

Công thức để tự nhập tại sheet `DatSan`:

- E2: `=VLOOKUP(C2;BangGia!$A:$C;2;0)`
- F2: `=VLOOKUP(C2;BangGia!$A:$C;3;0)`
- G2: `=D2*F2`

Sao chép công thức xuống hết dữ liệu. Nhấn **Ctrl + Shift + L**, lọc `tien_san >= 900000`, rồi lưu file.

Nếu Excel không nhận dấu `;`, thay bằng dấu `,`. Chưa điền công thức vào workbook.
