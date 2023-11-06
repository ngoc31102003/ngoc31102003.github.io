-- 1/ Tao DADABASE + SU DUNG

CREATE DATABASE QLBanHang
GO
USE QLBanHang
GO 
--2/ TAO CÁC TABLE + KHÓA CHÍNH
CREATE TABLE nhaCungCap 
(
	maCongTy	NVARCHAR(10)	NOT NULL,
	PRIMARY KEY(maCongTy),
	tenCongTy	NVARCHAR(40)	NOT NULL,
	tenGiaoDich	NVARCHAR(30)	NULL,
	diaChi		NVARCHAR(50)	NULL,
	dienThoai	NVARCHAR(15)	NULL,
	fax			NVARCHAR(15)	NULL,
	email		NVARCHAR(30)	NULL,
);
GO 
CREATE TABLE loaiHang 
(
	maLoaiHang	NVARCHAR(10)	NOT NULL,
	PRIMARY KEY(maLoaiHang),
	tenLoaiHang	NVARCHAR(40)	NOT NULL,
);
GO
CREATE TABLE matHang 
(
	maHang		NVARCHAR(10)	NOT NULL,
	PRIMARY KEY(maHang),
	tenHang		NVARCHAR(50)	NOT NULL,
	maCongTy	NVARCHAR(10)	NOT NULL,
	maLoaiHang	NVARCHAR(10)	NOT NULL,
	FOREIGN KEY (maCongTy)
	REFERENCES nhaCungCap (maCongTy),
	FOREIGN KEY (maLoaiHang)
	REFERENCES loaiHang (maLoaiHang),
	soLuong		INT				NULL,
	donViTinh	NVARCHAR(10)	NULL,
	giaHang		INT				NULL,
);
GO 
CREATE TABLE nhanVien
(
	maNhanVien	NVARCHAR(10)	NOT NULL,
	PRIMARY KEY(maNhanVien),
	ho			NVARCHAR(20)	NOT NULL,
	ten			NVARCHAR(10)	NOT NULL,
	ngaySinh	DATETIME		NULL,
	ngayLamViec	DATETIME		NULL,
	diaChi		NVARCHAR(50)	NULL,
	dienThoai	NVARCHAR(15)	NULL,
	luongCoBan	INT				NULL,
	phuCap		INT				NULL,
);
GO 
CREATE TABLE khachHang 
(
	maKhachHang	NVARCHAR(10)	NOT NULL,
	PRIMARY KEY(maKhachHang),
	tenCongTy	NVARCHAR(40)	NOT NULL,
	tenGiaoDich	NVARCHAR(30)	NULL,
	diaChi		NVARCHAR(50)	NULL,
	dienThoai	NVARCHAR(15)	NULL,
	fax			NVARCHAR(15)	NULL,
	email		NVARCHAR(30)	NULL,
);
GO 
CREATE TABLE donDatHang 
(
	soHoaDon	INT				NOT NULL,
	PRIMARY KEY(soHoaDon),
	maKhachHang	NVARCHAR(10)	NULL,
	maNhanVien	NVARCHAR(10)	NULL,
	FOREIGN KEY (maKhachHang)
	REFERENCES khachHang (maKhachHang),
	FOREIGN KEY (maNhanVien)
	REFERENCES nhanVien (maNhanVien),
	ngayDatHang	DATETIME		NULL,
	ngayGiaoHang	DATETIME	NULL,
	ngayChuyenHang	DATETIME	NULL,
	noiGiaoHang	NVARCHAR(50)	NULL,
);
GO
CREATE TABLE chiTietDonHang
(
	soHoaDon	INT				NOT NULL,
	maHang		NVARCHAR(10)	NOT NULL,
	giaBan		INT				NULL,
	soLuong		SMALLINT		NULL,
	mucGiamGia	NUMERIC(2,1)	NULL,
	PRIMARY KEY (soHoaDon, maHang),
	FOREIGN KEY (maHang) 
	REFERENCES matHang (maHang),
	FOREIGN KEY (soHoaDon)
	REFERENCES donDatHang (soHoaDon)
);
GO 
--  CAU HOI 1

GO
-- CAU HOI 2
ALTER TABLE donDatHang
ADD CONSTRAINT CK_NgayGiaoChuyenSauDat CHECK (ngayGiaoHang >= ngayDatHang AND ngayChuyenHang >= ngayDatHang);
-- CAU HOI 3
GO
ALTER TABLE nhanVien
ADD CONSTRAINT CK_TuoiNhanVien CHECK (DATEDIFF(YEAR, ngaySinh, GETDATE()) >= 18 AND DATEDIFF(YEAR, ngaySinh, GETDATE()) <= 61);





