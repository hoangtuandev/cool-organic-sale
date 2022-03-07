
CREATE TABLE loaisanpham (
	lsp_id VARCHAR(15) NOT NULL PRIMARY KEY,
     lsp_tenloai VARCHAR(30) NOT NULL
)

CREATE TABLE sanpham (
	sp_id VARCHAR(15) NOT NULL PRIMARY KEY,
    sp_tensanpham VARCHAR(30) NOT NULL,
    sp_gia FLOAT NOT NULL  CHECK(sp_gia >= 0),
    sp_hinhanh VARCHAR(100) NOT NULL,
    sp_donvitinh VARCHAR(10) NOT NULL,
    sp_tonkho INT NOT NULL  CHECK(sp_tonkho >= 0),
    sp_maloai VARCHAR(15) NOT NULL REFERENCES loaisanpham(lsp_id)
)

CREATE TABLE taikhoankhachhang (
     tkkh_sodienthoai VARCHAR(15) NOT NULL PRIMARY KEY,
     tkkh_matkhau VARCHAR(30) NOT NULL, 
     tkkh_hoten VARCHAR(30) NOT NULL,
     tkkh_hinhanh VARCHAR(200)
)

CREATE TABLE nhanvien (
     nv_id VARCHAR(15) NOT NULL PRIMARY KEY,
     nv_hoten VARCHAR(30) NOT NULL,
     nv_gioitinh VARCHAR(10),
     nv_ngaysinh DATE,
     nv_sodienthoai VARCHAR(15) NOT NULL,
     nv_diachi VARCHAR(300)
)

CREATE TABLE quyenhantaikhoan (
     qhtk_id VARCHAR(10) NOT NULL PRIMARY KEY,
     qhtk_quyenhan VARCHAR(30) NOT NULL
)

CREATE TABLE trangthaitaikhoan (
     tttk_id VARCHAR(10) NOT NULL PRIMARY KEY,
     tttk_trangthai VARCHAR(30) NOT NULL
)

CREATE TABLE taikhoanquantri (
     tkqt_tendangnhap VARCHAR(20) NOT NULL PRIMARY KEY,
     tkqt_matkhau VARCHAR(30) NOT NULL,
     tkqt_manhanvien VARCHAR(15) REFERENCES nhanvien(nv_id),
     tkqt_quyenhan VARCHAR(10) NOT NULL REFERENCES quyenhantaikhoan(qhtk_id),
     tkqt_trangthai VARCHAR(10) NOT NULL REFERENCES trangthaitaikhoan(tttk_id)
)

CREATE TABLE khachhang (
     kh_ma VARCHAR(15) NOT NULL PRIMARY KEY,
     kh_hoten VARCHAR(30) NOT NULL,
     kh_gioitinh VARCHAR(10),
     kh_sodienthoai VARCHAR(15),
     kh_diachi VARCHAR(300),
     kh_taikhoan VARCHAR(15) NOT NULL REFERENCES taikhoankhachhang(tkkh_sodienthoai)
)

CREATE TABLE sanphamkhuyenmai (
     spkm_id VARCHAR(15) NOT NULL PRIMARY KEY,
     spkm_masanpham VARCHAR(15) NOT NULL REFERENCES sanpham(sp_id),
     spkm_tylegiam INT CHECK(spkm_tylegiam >= 0),
     spkm_ngaybatdau DATETIME,
     spkm_ngayketthuc DATETIME
)

CREATE TABLE giohang (
     gh_id VARCHAR(15) NOT NULL PRIMARY KEY,
     gh_sodienthoai VARCHAR(15) NOT NULL REFERENCES taikhoankhachhang(tkkh_sodienthoai),
     gh_masanpham VARCHAR(15) NOT NULL REFERENCES sanpham(sp_id),
     gh_donvitinh VARCHAR(20) NOT NULL,
     gh_dongia FLOAT NOT NULL CHECK(gh_dongia >= 0),
     gh_soluong INT NOT NULL
)

CREATE TABLE khuyenmai (
     khmai_id VARCHAR(15) NOT NULL PRIMARY KEY,
     khmai_nhan VARCHAR(15) NOT NULL,
     kmai_mota VARCHAR(1000),
     kmai_giatri FLOAT,
     kmai_giamtoida FLOAT,
     kmai_dieukien FLOAT NOT NULL,
     kmai_ngaybatdau DATE NOT NULL,
     kmai_ngayketthuc DATE NOT NULL
)

CREATE TABLE trangthaidonhang (
     ttdh_id VARCHAR(15) NOT NULL PRIMARY KEY,
     ttdh_trangthai VARCHAR(30) NOT NULL
)

CREATE TABLE donhang (
     dh_id VARCHAR(20) NOT NULL PRIMARY KEY,
     dh_taikhoan VARCHAR(15) NOT NULL REFERENCES taikhoankhachhang(tkkh_sodienthoai),
     dh_ngaydathang DATETIME NOT NULL,
     dh_trangthai VARCHAR(15) NOT NULL REFERENCES trangthaidonhang(ttdh_trangthai),
     dh_diachi VARCHAR(300) NOT NULL,
     dh_sodienthoai VARCHAR(15) NOT NULL,
     dh_hinhthucthanhtoan VARCHAR(15) NOT NULL,
     dh_thanhtoan FLOAT NOT NULL
)

CREATE TABLE chitietdonhang (
     ctdh_id VARCHAR(30) NOT NULL PRIMARY KEY,
     ctdh_madonhang VARCHAR(20) NOT NULL REFERENCES donhang(dh_id),
     ctdh_masanpham VARCHAR(15) NOT NULL REFERENCES sanpham(sp_id),
     ctdh_soluong INT NOT NULL,
     ctdh_donvitinh VARCHAR(10) NOT NULL,
     ctdh_hinhanh VARCHAR(200),
     ctdh_tongtien FLOAT NOT NULL
)