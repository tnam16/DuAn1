﻿-- SQL Server SQL Dump
-- Chuyển đổi cho SQL Server
-- Cơ sở dữ liệu: quanlimaytinh
-- Thời gian tạo: 17/12/2022 04:53 AM

-- Tạo cơ sở dữ liệu
CREATE DATABASE quanlimaytinh;
GO

USE quanlimaytinh;
GO

-- Cấu trúc bảng Account
CREATE TABLE Account (
    fullName NVARCHAR(50) NULL,
    userName NVARCHAR(50) NOT NULL,
    password NVARCHAR(60) NULL,
    role NVARCHAR(50) NULL,
    status INT NULL,
    email NVARCHAR(50) NULL,
    CONSTRAINT PK_Account PRIMARY KEY (userName)
);
GO

-- Chèn dữ liệu vào bảng Account
INSERT INTO Account (fullName, userName, password, role, status, email) VALUES
(N'Admin', N'admin', N'123', N'Admin', 1, N'sinhbaoreact2003@gmail.com'),
(N'Admin2', N'admin2', N'123', N'Admin2', 1, N'namhuynh17122005@gmail.com');
GO

-- Cấu trúc bảng MayTinh
CREATE TABLE MayTinh (
    maMay NVARCHAR(50) NOT NULL,
    tenMay NVARCHAR(100) NULL,
    soLuong INT NOT NULL DEFAULT 0,
    tenCpu NVARCHAR(50) NOT NULL DEFAULT '0',
    ram NVARCHAR(50) NOT NULL DEFAULT '0',
    cardManHInh NVARCHAR(50) NULL,
    gia FLOAT NOT NULL DEFAULT 0,
    mainBoard NVARCHAR(50) NULL,
    congSuatNguon INT NULL,
    loaiMay NVARCHAR(50) NULL,
    rom NVARCHAR(50) NULL,
    kichThuocMan FLOAT NULL,
    dungLuongPin NVARCHAR(50) NULL,
    xuatXu NVARCHAR(50) NULL,
    trangThai INT NULL,
    CONSTRAINT PK_MayTinh PRIMARY KEY (maMay)
);
GO

-- Chèn dữ liệu vào bảng MayTinh
INSERT INTO MayTinh (maMay, tenMay, soLuong, tenCpu, ram, cardManHInh, gia, mainBoard, congSuatNguon, loaiMay, rom, kichThuocMan, dungLuongPin, xuatXu, trangThai) VALUES
(N'LP10', N'Laptop Lenovo IdeaPad Gaming 3', 36, N'Intel Core i5 12500H', N'16 GB', N'NVIDIA GeForce RTX 3050', 23490000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'4 Cell', N'Trung Quốc', 0),
(N'LP12', N'Laptop MSI Modern 14 B11MOU-1028VN', 23, N'Intel Core i3 115G4', N'8 GB', N'Intel UHD Graphics', 13090000, NULL, NULL, N'Laptop', N'256 GB', 14, N'3 Cell', N'Trung Quốc', 0),
(N'LP13', N'Laptop HP 15s-fq2663TU', 19, N'Intel Core i3 1115G4', N'4 GB', N'Intel UHD Graphics', 9990000, NULL, NULL, N'Laptop', N'256 GB', 15.6, N'3 Cell', N'Trung Quốc', 1),
(N'LP14', N'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 3, N'Intel Core i5 12500H', N'16 GB', N'Intel Iris Xe Graphics', 22490000, NULL, NULL, N'Laptop', N'512 GB', 16, N'4 Cell', N'Trung Quốc', 1),
(N'LP15', N'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 28, N'Intel Core i7 12700H', N'16 GB', N'Intel Iris Xe Graphics', 25190000, NULL, NULL, N'Laptop', N'512 GB', 16, N'75 Wh', N'Trung Quốc', 1),
(N'LP16', N'Laptop Acer Nitro Gaming AN515-57-54MV', 62, N'Intel Core i5 11400H', N'8', N'NVIDIA GeForce RTX 3050', 22990000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'4 Cell ', N'Trung Quốc', 1),
(N'LP17', N'Laptop MSI Gaming Katana GF66 12UCK-815VN', 22, N'Intel Core i5 12450H', N'8 GB', N'Intel UHD Graphics', 23190000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'53.5 Wh', N'Trung Quốc', 1),
(N'LP18', N'Laptop Asus TUF Gaming FX517ZC-HN077W', 23, N'Intel Core i5 12450H', N'8 GB', N'NVIDIA GeForce RTX 3050', 24990000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'4 Cell', N'Trung Quốc', 1),
(N'LP19', N'Laptop HP Gaming Victus 16-e0175AX', 18, N'AMD Ryzen 5 5600H', N'8 GB', N'NVIDIA GeForce RTX 3050 Ti', 19490000, NULL, NULL, N'Laptop', N'512 GB', 16.1, N'4 Cell', N'Trung Quốc', 1),
(N'LP20', N'Laptop MSI GF63 Thin 11UC-444VN', 19, N'Intel Core i5 11400H', N'8 GB', N'NVIDIA GeForce RTX 3050', 20790000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'3 Cell', N'Trung Quốc', 1),
(N'LP21', N'Laptop Asus TUF Gaming FX517ZE-HN045W', 16, N'Intel Core i5 12450H', N'8 GB', N'NVIDIA GeForce RTX 3050 Ti', 25990000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'4 Cell', N'Trung Quốc', 1),
(N'LP22', N'Laptop Lenovo Yoga Slim 7 Pro 14IHU5O', 20, N'Intel Core i5 11300H', N'16 GB', N'Intel Iris Xe Graphics', 23490000, NULL, NULL, N'Laptop', N'512 GB', 14, N'4 Cell ', N'Trung Quốc', 1),
(N'LP23', N'Laptop Gigabyte U4 UD-50VN823SO', 37, N'Intel Core i5 1155G7', N'16 GB', N'Intel Iris Xe Graphics', 15690000, NULL, NULL, N'Laptop', N'512 GB', 14, N'36 Wh', N'Trung Quốc', 1),
(N'LP24', N'Laptop Dell Vostro V5410 i5', 34, N'Intel Core i5 11320H', N'8 GB', N'Intel Iris Xe Graphics', 21490000, NULL, NULL, N'Laptop', N'512 GB', 14, N'4 Cell', N'Trung Quốc', 1),
(N'LP25', N'Laptop MSI Gaming GF63 Thin 11SC-666VN', 53, N'Intel Core i5 11400H', N'8 GB', N'NVIDIA GeForce GTX 1650', 18390000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'3 Cell', N'Trung Quốc', 1),
(N'LP3', N'Lenovo ThinkPad E14', 83, N'Intel Core i5 11G352', N'8GB', N'OnBoard', 15000000, NULL, NULL, N'Laptop', N'521GB', 14, N'45Wh', N'Trung Quốc', 1),
(N'LP4', N'Lenovo Ideapad 3 15ITL6', 118, N'Intel Core i3 1115G4', N'8GB', N'Onboard', 10690000, NULL, NULL, N'Laptop', N'512GB', 15.6, N'35Wh', N'Trung Quốc', 1),
(N'LP5', N'Gigabyte Gaming G5 GD', 11, N'Intel Core i5 11400H', N'16GB', N'NVIDIA GeForce RTX 3050 4GB', 19290000, NULL, NULL, N'Laptop', N'512GB', 15.6, N'50Wh', N'Trung Quốc', 1),
(N'LP6', N'MSI Gaming GF63 Thin 11SC-1090VN', 90, N'Intel Core i5 11400H', N'8GB', N'NVIDIA GeForce GTX 1650 4GB', 17490000, NULL, NULL, N'Laptop', N'512GB', 15.6, N'50Wh', N'Trung Quốc', 1),
(N'LP7', N'Laptop Asus TUF Gaming FX506LHB-HN188W', 19, N'Intel Core i5 10300H', N'8 GB', N'NVIDIA GeForce GTX 1650', 17490000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'3 Cell', N'Trung Quốc', 1),
(N'LP8', N'Laptop MSI Gaming GF63 Thin 11SC-1090VN', 60, N'Intel Core i5 11400H', N'8 GB', N'NVIDIA GeForce GTX 1650 4GB', 18390000, NULL, NULL, N'Laptop', N'512 GB', 15.6, N'3 Cell', N'Trung Quốc', 1),
(N'LP9', N'Laptop Asus TUF Gaming FA506IHRB-HN019W', 25, N'AMD Ryzen 5 4600H', N'8 GB', N'NVIDIA GeForce GTX 1650', 16490000, NULL, NULL, N'Laptop', N'512 GB', 12, N'3 cell', N'Trung Quốc', 1),
(N'PC06', N'PC E-Power Office 08', 19, N'Intel Core i5 11400', N'16 GB', N'Intel UHD Graphics 730', 9690000, N'Intel H510', 9690000, N'PC - Lắp ráp', N'240 GB', NULL, NULL, N'Việt Nam', 1),
(N'PC1', N'PC E-Power Office 04', 16, N'Intel Core i3 10105', N'8GB', N'Intel HD Graphics 630', 7090000, N'Intel H510', 0, N'Laptop', N'240GB', NULL, NULL, N'Việt Nam', 1),
(N'PC2', N'PC E-Power Office 05', 30, N'Intel Core i5 10400', N'8 GB', N'Intel UHD Graphics 630', 8290000, N'Intel H510', 300, N'PC - Lắp ráp', N'8 GB', NULL, NULL, N'Việt Nam', 1),
(N'PC3', N'PC E-Power Office 07', 19, N'Intel Core i5 11400', N'8 GB', N'Intel UHD Graphics 730', 8990000, N'Intel H510', 8990000, N'PC - Lắp ráp', N'240 GB', NULL, NULL, N'Việt Nam', 1),
(N'PC30', N'ASUS Vivobook', 1, N' Ryzen 7 5800H ', N'16GB', N'GTX 3060', 25000000, NULL, NULL, N'Laptop', N'512GB', 24, N'3000', N'Việt Nam', 1),
(N'PC4', N'PC Gaming E-Power G1650', 71, N'Intel Core i3 10100F', N'8 GB', N'Intel UHD Graphics 730', 11990000, N'Intel H510', 300, N'PC - Lắp ráp', N'240 GB', NULL, NULL, N'Việt Nam', 1),
(N'PC5', N'PC E-Power Office 06', 33, N'Intel Core i5 10400', N'16 GB', N'Intel HD Graphics 630', 9190000, N'Intel H510', 200, N'PC - Lắp ráp', N'240 GB', NULL, NULL, N'Việt Nam', 1),
(N'PC7', N'PC Acer Aspire AS-XC780 DT.B8ASV.006', 21, N' Intel Core i5-7400', N'4GB', N' Intel HD Graphics 630 / GeForce GT 720 2GB', 11200000, N'Intel H510', 300, N'PC - Lắp ráp', N'1TB', NULL, NULL, N'Việt Nam', 1);
GO

-- Cấu trúc bảng NhaCungCap
CREATE TABLE NhaCungCap (
    maNhaCungCap NVARCHAR(50) NOT NULL,
    tenNhaCungCap NVARCHAR(50) NULL,
    Sdt NVARCHAR(50) NULL,
    diaChi NVARCHAR(150) NULL,
    CONSTRAINT PK_NhaCungCap PRIMARY KEY (maNhaCungCap)
);
GO

-- Chèn dữ liệu vào bảng NhaCungCap
INSERT INTO NhaCungCap (maNhaCungCap, tenNhaCungCap, Sdt, diaChi) VALUES
(N'ANPHAT', N'Công Ty TNHH Điều Khiển Tự Động An Phát', N'02835109735', N'86/21 Phan Tây Hồ, P. 7, Q. Phú Nhuận TP. Hồ Chí Minh'),
(N'CODO', N'Công Ty TNHH Thương Mại Dịch Vụ Hoàng Cố Đô', N'02838115345', N'622/16/5 Cộng Hòa, Phường 13, Quận Tân Bình, TP HCM'),
(N'FPT', N'Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT', N'0287302560', N'261 - 263 Khánh Hội, P2, Q4, TP. Hồ Chí Minh'),
(N'HACOM', N'Công ty Cổ phần đầu tư công nghệ HACOM', N'1900 1903', N'Số 129 - 131, phố Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Bà Trưng, Hà Nội'),
(N'HOANGPHAT', N'Công Ty TNHH Thương Mại Hoàng Phát Hải Phòng', N'02253250888', N'Số 4, Lô 2A Lê Hồng Phong, Ngô Quyền, Tp. Hải Phòng'),
(N'PHONGVU', N'Công ty cổ phần dịch vụ - thương mại Phong Vũ', N'0967567567', N'Tầng 5, Số 117-119-121 Nguyễn Du, Phường Bến Thành, Quận 1, Thành Phố Hồ Chí Minh'),
(N'TGDĐ', N'Công ty cổ phần Thế Giới Di Động', N'028 38125960', N'128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh'),
(N'VIETSTARS', N'Công ty CP Công nghệ Thương mại Dịch vụ Vietstars', N'090 469 0212', N'Số 107 Lê Thanh Nghị  TP Hải dương');
GO

-- Cấu trúc bảng PhieuNhap
CREATE TABLE PhieuNhap (
    maPhieu NVARCHAR(50) NOT NULL,
    thoiGianTao DATETIME2 NULL,
    nguoiTao NVARCHAR(50) NULL,
    maNhaCungCap NVARCHAR(50) NULL,
    tongTien FLOAT NOT NULL,
    CONSTRAINT PK_PhieuNhap PRIMARY KEY (maPhieu),
    CONSTRAINT FK_PhieuNhap_Account FOREIGN KEY (nguoiTao) REFERENCES Account (userName),
    CONSTRAINT FK_PhieuNhap_NhaCungCap FOREIGN KEY (maNhaCungCap) REFERENCES NhaCungCap (maNhaCungCap)
);
GO

-- Chèn dữ liệu vào bảng PhieuNhap
INSERT INTO PhieuNhap (maPhieu, thoiGianTao, nguoiTao, maNhaCungCap, tongTien) VALUES
(N'PN1', '2022-12-01 13:59:09', N'admin', N'FPT', 42980000),
(N'PN10', '2022-12-07 18:04:19', N'admin', N'HOANGPHAT', 112440000),
(N'PN11', '2022-12-07 18:48:21', N'admin', N'FPT', 98300000),
(N'PN12', '2022-12-16 02:19:48', N'admin', N'HACOM', 39880000),
(N'PN13', '2022-12-16 02:19:36', N'admin', N'PHONGVU', 38980000),
(N'PN14', '2022-12-08 12:28:57', N'admin', N'FPT', 50970000),
(N'PN15', '2022-12-08 12:36:25', N'admin', N'FPT', 39980000),
(N'PN16', '2022-12-08 16:30:48', N'admin', N'HOANGPHAT', 52170000),
(N'PN17', '2022-12-09 14:29:43', N'admin', N'FPT', 30180000),
(N'PN18', '2022-12-09 17:08:19', N'admin', N'FPT', 78750000),
(N'PN19', '2022-12-12 07:09:21', N'admin', N'PHONGVU', 66860000),
(N'PN2', '2022-12-01 13:59:23', N'admin', N'FPT', 46780000)
-- date and time is 02:24 PM + 07 on Thursday, July 03, 2025.

--Có vẻ như yêu cầu của bạn đã bị cắt ngắn và không bao gồm toàn bộ dữ liệu cần thiết để tiếp tục chuyển đổi phần còn lại của mã SQL. Tuy nhiên, dựa trên phần mã bạn đã cung cấp, tôi đã hoàn thành việc chuyển đổi sang SQL Server cho các bảng `Account`, `MayTinh`, `NhaCungCap`, và một phần của `PhieuNhap`. Dưới đây là phần tiếp theo của mã SQL Server cho các bảng còn lại (`PhieuXuat`, `ChiTietPhieuNhap`, `ChiTietPhieuXuat`) và dữ liệu chèn vào, dựa trên dữ liệu bạn đã gửi.

--### Tiếp Tục Mã SQL Server

```sql
-- Chèn dữ liệu còn lại vào bảng PhieuNhap
INSERT INTO PhieuNhap (maPhieu, thoiGianTao, nguoiTao, maNhaCungCap, tongTien) VALUES
(N'PN20', '2022-12-13 19:46:37', N'admin', N'PHONGVU', 233270000),
(N'PN21', '2022-12-14 11:54:21', N'admin', N'PHONGVU', 1536180000),
(N'PN22', '2022-12-14 12:32:09', N'admin', N'FPT', 89660000),
(N'PN23', '2022-12-14 14:28:52', N'admin', N'FPT', 112540000),
(N'PN24', '2022-12-14 14:41:23', N'admin', N'FPT', 2339800000),
(N'PN25', '2022-12-14 15:18:25', N'admin', N'ANPHAT', 22490000),
(N'PN26', '2022-12-14 20:01:37', N'admin', N'ANPHAT', 50380000),
(N'PN27', '2022-12-14 20:02:31', N'admin', N'ANPHAT', 192900000),
(N'PN28', '2022-12-15 10:43:36', N'admin', N'ANPHAT', 71870000),
(N'PN29', '2022-12-16 02:19:55', N'admin', N'CODO', 10690000),
(N'PN3', '2022-12-03 03:58:18', N'admin', N'FPT', 88450000),
(N'PN30', '2022-12-15 23:13:22', N'admin', N'ANPHAT', 59480000),
(N'PN32', '2022-12-16 02:19:27', N'admin', N'HOANGPHAT', 80260000),

(N'PN34', '2022-12-16 15:31:14', N'admin', N'HOANGPHAT', 513500000),
(N'PN35', '2022-12-16 15:36:48', N'admin', N'HOANGPHAT', 59760000),
(N'PN36', '2022-12-16 15:40:31', N'admin', N'ANPHAT', 389800000),
(N'PN37', '2022-12-17 01:02:09', N'admin', N'ANPHAT', 85350000),
(N'PN38', '2022-12-17 01:08:48', N'admin', N'ANPHAT', 838500000),
(N'PN4', '2022-12-03 03:58:37', N'admin', N'TGDĐ', 53270000),
(N'PN5', '2022-12-06 17:51:02', N'admin', N'FPT', 32070000),
(N'PN6', '2022-12-06 18:50:32', N'admin', N'FPT', 38190000),
(N'PN7', '2022-12-06 18:59:43', N'admin', N'PHONGVU', 135530000),
(N'PN8', '2022-12-06 19:15:01', N'admin', N'FPT', 46670000),
(N'PN9', '2022-12-06 19:20:44', N'admin', N'FPT', 43480000);
GO

-- Cấu trúc bảng PhieuXuat
CREATE TABLE PhieuXuat (
    maPhieu NVARCHAR(50) NOT NULL,
    thoiGianTao DATETIME2 NOT NULL DEFAULT GETDATE(),
    nguoiTao NVARCHAR(50) NOT NULL,
    tongTien FLOAT NOT NULL,
    CONSTRAINT PK_PhieuXuat PRIMARY KEY (maPhieu),
    CONSTRAINT FK_PhieuXuat_Account FOREIGN KEY (nguoiTao) REFERENCES Account (userName)
);
GO

-- Chèn dữ liệu vào bảng PhieuXuat
INSERT INTO PhieuXuat (maPhieu, thoiGianTao, nguoiTao, tongTien) VALUES
(N'PX1', '2022-12-01 14:10:44', N'admin', 291860000),
(N'PX10', '2022-12-07 18:41:08', N'admin', 57160000),
(N'PX12', '2022-12-07 19:06:56', N'admin', 45370000),
(N'PX13', '2022-12-08 12:31:48', N'admin', 109420000),
(N'PX14', '2022-12-08 16:30:10', N'admin', 78650000),
(N'PX15', '2022-12-12 22:31:09', N'admin', 86850000),
(N'PX16', '2022-12-14 15:04:47', N'admin', 136740000),
(N'PX17', '2022-12-14 15:34:07', N'admin', 51980000),
(N'PX18', '2022-12-15 20:32:57', N'admin', 151730000),
(N'PX19', '2022-12-16 02:20:15', N'Admin', 59360000),
(N'PX2', '2022-12-04 16:45:43', N'admin', 70660000),
(N'PX20', '2022-12-16 13:26:33', N'Admin', 79140000),
(N'PX21', '2022-12-16 13:36:43', N'Admin', 60850000),
(N'PX22', '2022-12-16 16:39:41', N'Admin', 35780000),
(N'PX23', '2022-12-16 17:18:54', N'Admin', 41460000),
(N'PX24', '2022-12-16 17:25:10', N'Admin', 63360000),
(N'PX25', '2022-12-16 18:51:31', N'Admin', 92550000),
(N'PX26', '2022-12-17 00:19:47', N'Admin', 94760000),
(N'PX3', '2022-12-04 16:45:52', N'admin', 89350000),
(N'PX4', '2022-12-04 16:45:59', N'admin', 58170000),
(N'PX5', '2022-12-06 19:10:13', N'admin', 85250000),
(N'PX6', '2022-12-06 19:19:12', N'admin', 71460000),
(N'PX7', '2022-12-06 19:25:43', N'admin', 52370000),
(N'PX8', '2022-12-07 18:39:54', N'admin', 39880000),
(N'PX9', '2022-12-07 18:40:22', N'admin', 36680000);
GO

-- Cấu trúc bảng ChiTietPhieuNhap
CREATE TABLE ChiTietPhieuNhap (
    maPhieu NVARCHAR(50) NOT NULL,
    maMay NVARCHAR(50) NOT NULL,
    soLuong INT NULL,
    donGia FLOAT NULL,
    CONSTRAINT PK_ChiTietPhieuNhap PRIMARY KEY (maPhieu, maMay),
    CONSTRAINT FK_ChiTietPhieuNhap_PhieuNhap FOREIGN KEY (maPhieu) REFERENCES PhieuNhap (maPhieu),
    CONSTRAINT FK_ChiTietPhieuNhap_MayTinh FOREIGN KEY (maMay) REFERENCES MayTinh (maMay)
);
GO

-- Chèn dữ liệu vào bảng ChiTietPhieuNhap
INSERT INTO ChiTietPhieuNhap (maPhieu, maMay, soLuong, donGia) VALUES
(N'PN1', N'LP10', 1, 23490000),
(N'PN1', N'LP19', 1, 19490000),
(N'PN10', N'LP16', 1, 22990000),
(N'PN10', N'LP22', 1, 23490000),
(N'PN10', N'LP9', 4, 16490000),
(N'PN11', N'LP17', 1, 23190000),
(N'PN11', N'LP25', 1, 18390000),
(N'PN11', N'PC1', 8, 7090000),
(N'PN12', N'LP24', 1, 21490000),
(N'PN12', N'LP8', 1, 18390000),
(N'PN13', N'LP24', 1, 21490000),
(N'PN13', N'LP6', 1, 17490000),
(N'PN14', N'LP19', 1, 19490000),
(N'PN14', N'LP20', 1, 20790000),
(N'PN14', N'LP4', 1, 10690000),
(N'PN15', N'LP14', 1, 22490000),
(N'PN15', N'LP6', 1, 17490000),
(N'PN16', N'LP17', 1, 23190000),
(N'PN16', N'LP5', 1, 19290000),
(N'PN16', N'PC06', 1, 9690000),
(N'PN17', N'LP19', 1, 19490000),
(N'PN17', N'LP4', 1, 10690000),
(N'PN18', N'LP15', 1, 25190000),
(N'PN18', N'LP5', 1, 19290000),
(N'PN18', N'LP6', 1, 17490000),
(N'PN18', N'PC06', 1, 9690000),
(N'PN18', N'PC1', 1, 7090000),
(N'PN19', N'LP18', 1, 24990000),
(N'PN19', N'LP24', 1, 21490000),
(N'PN19', N'LP4', 1, 10690000),
(N'PN19', N'PC06', 1, 9690000),
(N'PN2', N'LP20', 1, 20790000),
(N'PN2', N'LP21', 1, 25990000),
(N'PN20', N'LP16', 1, 22990000),
(N'PN20', N'LP25', 10, 18390000),
(N'PN20', N'LP5', 1, 19290000),
(N'PN20', N'PC1', 1, 7090000),
(N'PN21', N'LP16', 45, 22990000),
(N'PN21', N'LP8', 25, 18390000),
(N'PN22', N'LP10', 1, 23490000),
(N'PN22', N'LP15', 1, 25190000),
(N'PN22', N'LP22', 1, 23490000),
(N'PN22', N'LP6', 1, 17490000),
(N'PN23', N'LP19', 2, 19490000),
(N'PN23', N'LP5', 2, 19290000),
(N'PN23', N'LP7', 2, 17490000),
(N'PN24', N'PC7', 20, 116990000),
(N'PN25', N'LP14', 1, 22490000),
(N'PN26', N'LP15', 2, 25190000),
(N'PN27', N'LP5', 10, 19290000),
(N'PN28', N'LP15', 2, 25190000),
(N'PN28', N'LP24', 1, 21490000),
(N'PN29', N'LP4', 1, 10690000),
(N'PN3', N'LP15', 1, 25190000),
(N'PN3', N'LP22', 1, 23490000),
(N'PN3', N'LP25', 1, 18390000),
(N'PN3', N'LP4', 2, 10690000),
(N'PN30', N'LP16', 1, 22990000),
(N'PN30', N'LP24', 1, 21490000),
(N'PN30', N'LP3', 1, 15000000),
(N'PN31', N'LP14', 1, 22490000),
(N'PN31', N'LP25', 1, 18390000),
(N'PN31', N'LP7', 1, 17490000),
(N'PN32', N'LP18', 1, 24990000),
(N'PN32', N'LP5', 1, 19290000),
(N'PN32', N'LP9', 1, 16490000),
(N'PN32', N'PC2', 1, 8290000),
(N'PN32', N'PC7', 1, 11200000),
(N'PN33', N'LP14', 1, 22490000),
(N'PN33', N'LP22', 1, 23490000),
(N'PN33', N'LP3', 1, 15000000),
(N'PN33', N'PC1', 1, 7090000),
(N'PN34', N'LP25', 7, 18390000),
(N'PN34', N'LP6', 20, 17490000),
(N'PN34', N'LP8', 1, 18390000),
(N'PN34', N'PC2', 2, 8290000),
(N'PN35', N'LP24', 1, 21490000),
(N'PN35', N'LP4', 1, 10690000),
(N'PN35', N'LP8', 1, 18390000),
(N'PN35', N'PC5', 1, 9190000),
(N'PN36', N'LP19', 20, 19490000),
(N'PN37', N'LP19', 1, 19490000),
(N'PN37', N'LP4', 1, 10690000),
(N'PN37', N'LP8', 3, 18390000),
(N'PN38', N'LP23', 20, 15690000),
(N'PN38', N'LP6', 30, 17490000),
(N'PN4', N'LP5', 1, 19290000),
(N'PN4', N'LP7', 1, 17490000),
(N'PN4', N'LP9', 1, 16490000),
(N'PN5', N'LP4', 3, 10690000),
(N'PN6', N'LP17', 1, 23190000),
(N'PN6', N'LP3', 1, 15000000),
(N'PN7', N'LP15', 1, 25190000),
(N'PN7', N'LP25', 1, 18390000),
(N'PN7', N'LP8', 5, 18390000),
(N'PN8', N'LP19', 1, 19490000),
(N'PN8', N'LP4', 1, 10690000),
(N'PN8', N'LP9', 1, 16490000),
(N'PN9', N'LP21', 1, 25990000),
(N'PN9', N'LP6', 1, 17490000);
GO

-- Cấu trúc bảng ChiTietPhieuXuat
CREATE TABLE ChiTietPhieuXuat (
    maPhieu NVARCHAR(50) NOT NULL,
    maMay NVARCHAR(50) NOT NULL,
    soLuong INT NULL,
    donGia FLOAT NULL,
    CONSTRAINT PK_ChiTietPhieuXuat PRIMARY KEY (maPhieu, maMay),
    CONSTRAINT FK_ChiTietPhieuXuat_PhieuXuat FOREIGN KEY (maPhieu) REFERENCES PhieuXuat (maPhieu),
    CONSTRAINT FK_ChiTietPhieuXuat_MayTinh FOREIGN KEY (maMay) REFERENCES MayTinh (maMay)
);
GO

-- Chèn dữ liệu vào bảng ChiTietPhieuXuat
INSERT INTO ChiTietPhieuXuat (maPhieu, maMay, soLuong, donGia) VALUES
(N'PX1', N'LP10', 1, 23490000),
(N'PX1', N'LP19', 13, 19490000),
(N'PX1', N'LP3', 1, 15000000),
(N'PX10', N'LP20', 1, 20790000),
(N'PX10', N'LP4', 1, 10690000),
(N'PX10', N'LP8', 1, 18390000),
(N'PX10', N'PC06', 1, 9690000),
(N'PX10', N'PC2', 1, 8290000),
(N'PX12', N'LP20', 1, 20790000),
(N'PX12', N'LP6', 1, 17490000),
(N'PX12', N'PC1', 1, 7090000),
(N'PX13', N'LP18', 1, 24990000),
(N'PX13', N'LP5', 2, 19290000),
(N'PX13', N'LP6', 1, 17490000),
(N'PX13', N'PC1', 4, 7090000),
(N'PX14', N'LP20', 1, 20790000),
(N'PX14', N'LP24', 1, 21490000),
(N'PX14', N'LP8', 1, 18390000),
(N'PX14', N'PC06', 1, 9690000),
(N'PX14', N'PC2', 1, 8290000),
(N'PX15', N'LP17', 1, 23190000),
(N'PX15', N'LP20', 1, 20790000),
(N'PX15', N'LP5', 1, 19290000),
(N'PX15', N'LP9', 1, 16490000),
(N'PX15', N'PC1', 1, 7090000),
(N'PX16', N'LP14', 4, 22490000),
(N'PX16', N'LP20', 1, 20790000),
(N'PX16', N'LP21', 1, 25990000),
(N'PX17', N'LP21', 2, 25990000),
(N'PX18', N'LP16', 5, 22990000),
(N'PX18', N'LP8', 2, 18390000),
(N'PX19', N'LP18', 1, 24990000),
(N'PX19', N'LP23', 1, 15690000),
(N'PX19', N'PC06', 1, 9690000),
(N'PX19', N'PC3', 1, 8990000),
(N'PX2', N'LP21', 1, 25990000),
(N'PX2', N'LP6', 2, 17490000),
(N'PX2', N'PC06', 1, 9690000),
(N'PX20', N'LP6', 2, 17490000),
(N'PX20', N'LP9', 1, 16490000),
(N'PX20', N'PC06', 1, 9690000),
(N'PX20', N'PC3', 2, 8990000),
(N'PX21', N'LP23', 1, 15690000),
(N'PX21', N'LP7', 1, 17490000),
(N'PX21', N'PC06', 2, 9690000),
(N'PX21', N'PC2', 1, 8290000),
(N'PX22', N'LP5', 1, 19290000),
(N'PX22', N'LP9', 1, 16490000),
(N'PX23', N'LP23', 1, 15690000),
(N'PX23', N'PC06', 1, 9690000),
(N'PX23', N'PC1', 1, 7090000),
(N'PX23', N'PC3', 1, 8990000),
(N'PX24', N'LP19', 1, 19490000),
(N'PX24', N'LP8', 1, 18390000),
(N'PX24', N'LP9', 1, 16490000),
(N'PX24', N'PC3', 1, 8990000),
(N'PX25', N'LP19', 1, 19490000),
(N'PX25', N'LP7', 2, 17490000),
(N'PX25', N'PC1', 1, 7090000),
(N'PX26', N'LP19', 1, 19490000),
(N'PX26', N'LP22', 1, 23490000),
(N'PX26', N'LP3', 1, 15000000),
(N'PX26', N'LP5', 1, 19290000),
(N'PX26', N'LP6', 1, 17490000),
(N'PX3', N'LP22', 1, 23490000),
(N'PX3', N'LP4', 1, 10690000),
(N'PX3', N'LP8', 1, 18390000),
(N'PX4', N'LP17', 1, 23190000),
(N'PX4', N'LP6', 1, 17490000),
(N'PX4', N'LP7', 1, 17490000),
(N'PX5', N'LP16', 1, 22990000),
(N'PX5', N'LP5', 1, 19290000),
(N'PX5', N'LP7', 1, 17490000),
(N'PX5', N'LP9', 1, 16490000),
(N'PX5', N'PC3', 1, 8990000),
(N'PX6', N'LP12', 1, 13090000),
(N'PX6', N'LP13', 1, 9990000),
(N'PX6', N'LP15', 1, 25190000),
(N'PX6', N'LP17', 1, 23190000),
(N'PX7', N'LP21', 1, 25990000),
(N'PX7', N'LP5', 1, 19290000),
(N'PX7', N'PC1', 1, 7090000),
(N'PX8', N'LP24', 1, 21490000),
(N'PX8', N'LP3', 1, 15000000),
(N'PX8', N'LP5', 1, 19290000),
(N'PX8', N'LP8', 1, 18390000),
(N'PX8', N'PC1', 1, 7090000),
(N'PX9', N'LP21', 1, 25990000),
(N'PX9', N'LP22', 1, 23490000),
(N'PX9', N'LP4', 1, 10690000);
GO