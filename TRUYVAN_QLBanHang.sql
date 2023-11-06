USE QLBanHang

GO 
-- CAU 1
	SELECT * FROM nhaCungCap;
GO 
-- CAU 2
	SELECT maHang, tenHang, soLuong FROM matHang;
GO 
-- CAU 3
	SELECT diaChi, DienThoai 
	FROM nhaCungCap
	WHERE tenGiaoDich = 'CTY ABC';
GO 
-- CAU 4
	SELECT maHang, tenHang,giaHang,soLuong,donViTinh
	FROM matHang 
	WHERE giaHang > 200000 AND soLuong < 200;
-- CAU 5
	SELECT 
		khachHang.tenCongTy AS KhachHangDatHang,
		nhanVien.ten AS NhanVienDatHang,
		donDatHang.ngayDatHang AS NgayDatHang,
		donDatHang.noiGiaoHang AS NoiGiaoHang
	FROM 
		donDatHang
	INNER JOIN khachHang ON donDatHang.maKhachHang = khachHang.maKhachHang
	INNER JOIN nhanVien ON donDatHang.maNhanVien = nhanVien.maNhanVien
	WHERE 
		donDatHang.soHoaDon = 1;
GO
-- CAU 6
	SELECT maNhanVien,ho,ten,luongCoBan
	FROM nhanVien
	WHERE luongCoBan = (SELECT MAX(luongCoBan) FROM nhanVien);
GO 
-- CAU 7 
	SELECT TOP 1
		nhanVien.maNhanVien AS MaNhanVien,
		nhanVien.ten AS TenNhanVien,
		SUM(chiTietDonHang.soLuong) AS TongSoLuongBanDuoc
	FROM
		nhanVien
	INNER JOIN donDatHang ON nhanVien.maNhanVien = donDatHang.maNhanVien
	INNER JOIN chiTietDonHang ON donDatHang.soHoaDon = chiTietDonHang.soHoaDon
	GROUP BY
		nhanVien.maNhanVien, nhanVien.ten
	ORDER BY
		TongSoLuongBanDuoc DESC;
GO
-- CAU 8
	SELECT 
		loaiHang.maLoaiHang,
		loaiHang.tenLoaiHang,
		SUM(matHang.soLuong) AS TongSoLuong
	FROM
		loaiHang
	LEFT JOIN matHang ON loaiHang.maLoaiHang = matHang.maLoaiHang
	GROUP BY
		loaiHang.maLoaiHang, loaiHang.tenLoaiHang;
GO
-- CAU 9
	UPDATE nhanVien
	SET luongCoBan = luongCoBan * 1.5
	WHERE maNhanVien IN (
		SELECT DISTINCT d.maNhanVien
		FROM donDatHang d
		JOIN chiTietDonHang c ON d.soHoaDon = c.soHoaDon
		WHERE YEAR(d.ngayDatHang) = 2023
		GROUP BY d.maNhanVien
		HAVING SUM(c.soLuong) >= 8
	);
	-- IN RA SAU KHI UPDATE
	SELECT *
	FROM nhanVien;
GO
-- CAU 10
	DELETE FROM donDatHang
	WHERE YEAR(ngayDatHang) < 2020;
GO
-- CAU 11
	DELETE FROM nhanVien
	WHERE DATEDIFF(YEAR, ngayLamViec, GETDATE()) < 10;
GO


