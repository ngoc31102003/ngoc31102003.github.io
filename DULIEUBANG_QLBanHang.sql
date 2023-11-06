USE QLBanHang
GO 

-- DỮ LIỆU NHÀ CUNG CẤP
DELETE FROM nhaCungCap;
INSERT INTO nhaCungCap (maCongTy, tenCongTy, tenGiaoDich, diaChi, dienThoai, fax, email)
VALUES
('CT001', N'Công ty ABC', 'CTY ABC', N'Địa chỉ 1', '0123456781', '0987654321', 'email1@example.com'),
('CT002', N'Công ty XYZ', 'CTY XYZ', N'Địa chỉ 2', '0123456782', '0987654322', 'email2@example.com'),
('CT003', N'Công ty PQR', 'CTY PQR', N'Địa chỉ 3', '0123456783', '0987654323', 'email3@example.com'),
('CT004', N'Công ty LMN', 'CTY LMN', N'Địa chỉ 4', '0123456784', '0987654324', 'email4@example.com'),
('CT005', N'Công ty DEF', 'CTY DEF', N'Địa chỉ 5', '0123456785', '0987654325', 'email5@example.com'),
('CT006', N'Công ty GHI', 'CTY GHI', N'Địa chỉ 6', '0123456786', '0987654326', 'email6@example.com'),
('CT007', N'Công ty TUV', 'CTY TUV', N'Địa chỉ 7', '0123456787', '0987654327', 'email7@example.com'),
('CT008', N'Công ty MNO', 'CTY MNO', N'Địa chỉ 8', '0123456788', '0987654328', 'email8@example.com'),
('CT009', N'Công ty STU', 'CTY STU', N'Địa chỉ 9', '0123456789', '0987654329', 'email9@example.com'),
('CT010', N'Công ty WXY', 'CTY WXY', N'Địa chỉ 10', '0123456790', '0987654330', 'email10@example.com'),
('CT011', N'Công ty IJK', 'CTY IJK', N'Địa chỉ 11', '0123456791', '0987654331', 'email11@example.com'),
('CT012', N'Công ty EFG', 'CTY EFG', N'Địa chỉ 12', '0123456792', '0987654332', 'email12@example.com'),
('CT013', N'Công ty OPQ', 'CTY OPQ', N'Địa chỉ 13', '0123456793', '0987654333', 'email13@example.com'),
('CT014', N'Công ty RST', 'CTY RST', N'Địa chỉ 14', '0123456794', '0987654334', 'email14@example.com'),
('CT015', N'Công ty VWX', 'CTY VWX', N'Địa chỉ 15', '0123456795', '0987654335', 'email15@example.com');
GO

-- DỮ LIỆU LOẠI HÀNG
DELETE FROM loaiHang;
INSERT INTO loaiHang (maLoaiHang, tenLoaiHang)
VALUES
('LH001', N'Loại hàng 1'),
('LH002', N'Loại hàng 2'),
('LH003', N'Loại hàng 3'),
('LH004', N'Loại hàng 4'),
('LH005', N'Loại hàng 5'),
('LH006', N'Loại hàng 6'),
('LH007', N'Loại hàng 7'),
('LH008', N'Loại hàng 8'),
('LH009', N'Loại hàng 9'),
('LH010', N'Loại hàng 10'),
('LH011', N'Loại hàng 11'),
('LH012', N'Loại hàng 12'),
('LH013', N'Loại hàng 13'),
('LH014', N'Loại hàng 14'),
('LH015', N'Loại hàng 15');
GO 

-- DỮ LIỆU MẶT HÀNG
DELETE FROM matHang;
INSERT INTO matHang (maHang, tenHang, maCongTy, maLoaiHang, soLuong, donViTinh, giaHang)
VALUES
('MH001', N'Mặt hàng 1', 'CT001', 'LH001', 100, N'Cái', 100000),
('MH002', N'Mặt hàng 2', 'CT002', 'LH002', 150, N'Chiếc', 200000),
('MH003', N'Mặt hàng 3', 'CT003', 'LH003', 200, N'Cái', 250000),
('MH004', N'Mặt hàng 4', 'CT004', 'LH004', 120, N'Chiếc', 150000),
('MH005', N'Mặt hàng 5', 'CT005', 'LH005', 180, N'Cái', 300000),
('MH006', N'Mặt hàng 6', 'CT001', 'LH006', 90, N'Chiếc', 180000),
('MH007', N'Mặt hàng 7', 'CT002', 'LH007', 250, N'Cái', 350000),
('MH008', N'Mặt hàng 8', 'CT003', 'LH008', 130, N'Chiếc', 160000),
('MH009', N'Mặt hàng 9', 'CT004', 'LH009', 300, N'Cái', 400000),
('MH010', N'Mặt hàng 10', 'CT005', 'LH010', 50, N'Chiếc', 120000),
('MH011', N'Mặt hàng 11', 'CT001', 'LH011', 170, N'Cái', 280000),
('MH012', N'Mặt hàng 12', 'CT002', 'LH012', 110, N'Chiếc', 220000),
('MH013', N'Mặt hàng 13', 'CT003', 'LH013', 190, N'Cái', 320000),
('MH014', N'Mặt hàng 14', 'CT004', 'LH014', 80, N'Chiếc', 130000),
('MH015', N'Mặt hàng 15', 'CT005', 'LH015', 210, N'Cái', 360000);
GO 

-- DỮ LIỆU NHÂN VIÊN
DELETE FROM nhanVien;
INSERT INTO nhanVien (maNhanVien, ho, ten, ngaySinh, ngayLamViec, diaChi, dienThoai, luongCoBan, phuCap)
VALUES
('NV001', N'Nguyễn', N'Văn A', '1990-05-15', '2010-03-10', N'Hà Nội', '0901234567', 8000000, 1500000),
('NV002', N'Trần', N'Thị B', '1991-12-20', '2009-08-15', N'Hồ Chí Minh', '0909876543', 8500000, 1300000),
('NV003', N'Lê', N'Văn C', '1985-03-05', '2011-06-18', N'Đà Nẵng', '0911122334', 7500000, 1200000),
('NV004', N'Ngô', N'Mai D', '1992-09-10', '2012-11-30', N'Nghệ An', '0977123456', 7800000, 1400000),
('NV005', N'Trịnh', N'Duy E', '1993-04-25', '2010-07-22', N'Hà Tĩnh', '0966332244', 7600000, 1250000),
('NV006', N'Lương', N'Văn F', '1987-07-30', '2013-05-14', N'Hà Nội', '0988671234', 8200000, 1550000),
('NV007', N'Đỗ', N'Thị G', '1990-08-12', '2015-01-25', N'Quảng Ninh', '0934876201', 7900000, 1350000),
('NV008', N'Phan', N'Mạnh H', '1988-11-07', '2014-04-19', N'Bắc Giang', '0901334098', 8300000, 1450000),
('NV009', N'Bùi', N'Đức I', '1994-02-03', '2011-09-09', N'Thanh Hóa', '0987654321', 7400000, 1100000),
('NV010', N'Đặng', N'Thị K', '1989-10-18', '2016-02-10', N'Quảng Ngãi', '0966331234', 8100000, 1600000),
('NV011', N'Nguyễn', N'Hoàng L', '1995-06-08', '2017-07-29', N'Hà Nội', '0901237890', 8000000, 1300000),
('NV012', N'Lê', N'Thị M', '1986-12-03', '2012-12-15', N'Đà Lạt', '0911001122', 7500000, 1400000),
('NV013', N'Trần', N'Mạnh N', '1993-09-27', '2015-11-12', N'Lạng Sơn', '0934888888', 7900000, 1200000),
('NV014', N'Vũ', N'Thị P', '1991-05-10', '2013-08-02', N'Quảng Nam', '0988123456', 7800000, 1500000),
('NV015', N'Hồ', N'Minh Q', '1994-01-15', '2014-10-05', N'Nha Trang', '0901888888', 8300000, 1250000);
GO 

-- DỮ LIỆU KHÁCH HÀNG
DELETE FROM khachHang;
INSERT INTO khachHang (maKhachHang, tenCongTy, tenGiaoDich, diaChi, dienThoai, fax, email)
VALUES
('KH001', N'Công ty A', 'CTY A', N'Hà Nội', '0901234567', '0421234567', 'a@company.com'),
('KH002', N'Công ty B', 'CTY B', N'Hồ Chí Minh', '0909876543', '0429876543', 'b@company.com'),
('KH003', N'Công ty C', 'CTY C', N'Đà Nẵng', '0911122334', '0421122334', 'c@company.com'),
('KH004', N'Công ty D', 'CTY D', N'Nghệ An', '0977123456', '0427123456', 'd@company.com'),
('KH005', N'Công ty E', 'CTY E', N'Hà Tĩnh', '0966332244', '0426332244', 'e@company.com'),
('KH006', N'Công ty F', 'CTY F', N'Hà Nội', '0988671234', '0428671234', 'f@company.com'),
('KH007', N'Công ty G', 'CTY G', N'Quảng Ninh', '0934876201', '0424876201', 'g@company.com'),
('KH008', N'Công ty H', 'CTY H', N'Bắc Giang', '0901334098', '0421334098', 'h@company.com'),
('KH009', N'Công ty I', 'CTY I', N'Thanh Hóa', '0987654321', '0427654321', 'i@company.com'),
('KH010', N'Công ty K', 'CTY K', N'Quảng Ngãi', '0966331234', '0426331234', 'k@company.com'),
('KH011', N'Công ty L', 'CTY L', N'Hà Nội', '0901237890', '0421237890', 'l@company.com'),
('KH012', N'Công ty M', 'CTY M', N'Đà Lạt', '0911001122', '0421001122', 'm@company.com'),
('KH013', N'Công ty N', 'CTY N', N'Lạng Sơn', '0934888888', '0424888888', 'n@company.com'),
('KH014', N'Công ty P', 'CTY P', N'Quảng Nam', '0988123456', '0428123456', 'p@company.com'),
('KH015', N'Công ty Q', 'CTY Q', N'Nha Trang', '0901888888', '0421888888', 'q@company.com');
GO 

-- DỮ LIỆU ĐƠN ĐẶT HÀNG
DELETE FROM donDatHang;
INSERT INTO donDatHang (soHoaDon, maKhachHang, maNhanVien, ngayDatHang, ngayGiaoHang, ngayChuyenHang, noiGiaoHang)
VALUES
(1, 'KH001', 'NV001', '2019-01-10', '2023-01-15', '2023-01-20', N'Hà Nội'),
(2, 'KH002', 'NV002', '2023-01-11', '2023-01-16', '2023-01-21', N'Hồ Chí Minh'),
(3, 'KH003', 'NV003', '2023-01-12', '2023-01-17', '2023-01-22', N'Đà Nẵng'),
(4, 'KH004', 'NV004', '2023-01-13', '2023-01-18', '2023-01-23', N'Nghệ An'),
(5, 'KH005', 'NV005', '2017-01-14', '2023-01-19', '2023-01-24', N'Hà Tĩnh'),
(6, 'KH006', 'NV006', '2023-01-15', '2023-01-20', '2023-01-25', N'Hà Nội'),
(7, 'KH007', 'NV007', '2023-01-16', '2023-01-21', '2023-01-26', N'Quảng Ninh'),
(8, 'KH008', 'NV008', '2017-01-17', '2023-01-22', '2023-01-27', N'Bắc Giang'),
(9, 'KH009', 'NV009', '2023-01-18', '2023-01-23', '2023-01-28', N'Thanh Hóa'),
(10, 'KH010', 'NV010', '2023-01-19', '2023-01-24', '2023-01-29', N'Quảng Ngãi'),
(11, 'KH011', 'NV011', '2023-01-20', '2023-01-25', '2023-01-30', N'Hà Nội'),
(12, 'KH012', 'NV012', '2018-01-21', '2023-01-26', '2023-01-31', N'Đà Lạt'),
(13, 'KH013', 'NV013', '2018-01-22', '2023-01-27', '2023-02-01', N'Lạng Sơn'),
(14, 'KH014', 'NV014', '2019-01-23', '2023-01-28', '2023-02-02', N'Quảng Nam'),
(15, 'KH015', 'NV015', '2023-01-24', '2023-01-29', '2023-02-03', N'Nha Trang');
GO 

-- DỮ LIỆU CHI TIẾT ĐƠN HÀNG
DELETE FROM chiTietDonHang;
INSERT INTO chiTietDonHang (soHoaDon, maHang, giaBan, soLuong, mucGiamGia)
VALUES
(1, 'MH001', 100000, 5, 0.1),
(1, 'MH002', 150000, 3, 0.05),
(2, 'MH003', 80000, 4, 0.1),
(2, 'MH004', 120000, 2, 0.15),
(3, 'MH005', 90000, 10, 0.2),
(3, 'MH006', 110000, 4, 0.05),
(4, 'MH007', 75000, 5, 0.1),
(4, 'MH008', 160000, 3, 0.2),
(5, 'MH009', 85000, 4, 0.15),
(5, 'MH010', 130000, 2, 0.1),
(6, 'MH011', 95000, 5, 0.1),
(6, 'MH012', 140000, 3, 0.15),
(7, 'MH013', 70000, 6, 0.2),
(7, 'MH014', 110000, 4, 0.05),
(8, 'MH015', 92000, 5, 0.1);

