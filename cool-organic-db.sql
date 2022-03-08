-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 02:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cool-organic-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagorys`
--

CREATE TABLE `catagorys` (
  `catagoryId` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `catagoryName` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `catagorys`
--

INSERT INTO `catagorys` (`catagoryId`, `catagoryName`) VALUES
('LSP0002', 'Rau củ sạch'),
('LSP0151', 'Thịt tươi sống'),
('LSP0407', 'Trái cây tươi'),
('LSP0469', 'Thực phẩm dinh dưỡng'),
('LSP0568', 'Thực phẩm khô'),
('LSP0585', 'Thực phẩm nhập khẩu'),
('LSP0760', 'Gia vi'),
('LSP0860', 'Hải sản tươi sống');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ctdh_id` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ctdh_madonhang` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ctdh_masanpham` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ctdh_soluong` int(11) NOT NULL,
  `ctdh_donvitinh` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ctdh_hinhanh` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ctdh_tongtien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ctdh_id`, `ctdh_madonhang`, `ctdh_masanpham`, `ctdh_soluong`, `ctdh_donvitinh`, `ctdh_hinhanh`, `ctdh_tongtien`) VALUES
('CTDH0001', 'DH0001', 'SP00237105', 2, '500g', 'dao.jpg', 25500),
('CTDH0002', 'DH0001', 'SP00345343', 1, '1kg', 'dao.jpg', 355000),
('CTDH0003', 'DH0002', 'SP00362741', 3, '500g', 'dao.jpg', 45000),
('CTDH0004', 'DH0003', 'SP00401432', 2, '500g', 'dao.jpg', 105000),
('CTDH0005', 'DH0003', 'SP00424009', 1, '1kg', 'dao.jpg', 26000),
('CTDH001490569835087970', 'DH00391114521018', 'SP00534609', 3, '500g', 'ca_hoi.jpg', 375000),
('CTDH001569920524220269', 'DH00955998551593', 'SP00237105', 1, '1kg', 'CaRot.jpg', 25000),
('CTDH001907381516205112', 'DH00567026559549', 'SP00672622', 2, '1kg', 'tom-kho-size-s.jpg', 900000),
('CTDH002769471994637776', 'DH00986366724089', 'SP00237105', 1, '1kg', 'CaRot.jpg', 25000),
('CTDH003007244584781144', 'DH00680198389995', 'SP00362741', 3, '500g', 'dao.jpg', 300000),
('CTDH003098688309729710', 'DH00869388782431', 'SP00893200', 3, '500g', 'vai-thieu.jpg', 117000),
('CTDH003119013260755640', 'DH00363688591999', 'SP00455589', 1, '1kg', 'gao-2.jpg', 30000),
('CTDH003401800734426950', 'DH00986366724089', 'SP00540604', 1, '500g', 'thit_bo.jpg', 190000),
('CTDH003501999263167141', 'DH00181429070120', 'SP00362741', 1, '500g', 'dao.jpg', 100000),
('CTDH003640352308220769', 'DH00305682460569', 'SP00362741', 4, '1kg', 'dao.jpg', 800000),
('CTDH003757343216978054', 'DH00978813766444', 'SP00540604', 2, '1kg', 'thit_bo.jpg', 760000),
('CTDH004131791738770542', 'DH00977833417596', 'SP00362741', 3, '500g', 'dao.jpg', 300000),
('CTDH004174138712537360', 'DH00618270034375', 'SP00424009', 1, '500g', 'NhoUc.jpg', 177500),
('CTDH005274626617019028', 'DH00822200979281', 'SP00672622', 1, '500g', 'tom-kho-size-s.jpg', 225000),
('CTDH005431732123133073', 'DH00539272995637', 'SP00362741', 2, '1kg', 'dao.jpg', 400000),
('CTDH005497194866678795', 'DH00827865427559', 'SP00678778', 2, '1kg', 'MeThai.jpg', 35000),
('CTDH005578409330024510', 'DH00287136704938', 'SP00540604', 1, '1kg', 'thit_bo.jpg', 380000),
('CTDH005593666339918108', 'DH00226004836771', 'SP00362741', 1, '500g', 'dao.jpg', 100000),
('CTDH005757195600079298', 'DH00574792343098', 'SP00408964', 3, '500g', 'tao.jpg', 82500),
('CTDH006777741057546917', 'DH00112891506809', 'SP00424009', 3, '1kg', 'NhoUc.jpg', 1065000),
('CTDH006982286144332145', 'DH00226004836771', 'SP00237105', 3, '500g', 'CaRot.jpg', 12500),
('CTDH007731151498693871', 'DH00860174597140', 'SP00362741', 3, '1kg', 'dao.jpg', 600000),
('CTDH007809106213587841', 'DH00737612212469', 'SP00408964', 3, '1kg', 'tao.jpg', 165000),
('CTDH007896921992617258', 'DH00508898538304', 'SP00534609', 1, '500g', 'ca_hoi.jpg', 125000),
('CTDH007916981256484614', 'DH00266058463197', 'SP00237105', 5, '500g', 'CaRot.jpg', 62500),
('CTDH008301728895196150', 'DH00827865427559', 'SP00523605', 1, '500g', 'chanh.jpg', 17000),
('CTDH008551647404307572', 'DH00550145948734', 'SP00672293', 1, '500g', 'DuaChuot2.png', 7000),
('CTDH008778902745742632', 'DH00827865427559', 'SP00362741', 1, '500g', 'dao.jpg', 100000),
('CTDH008857178391750918', 'DH00730645404811', 'SP00362741', 3, '500g', 'dao.jpg', 300000),
('CTDH008915316732899899', 'DH00901545942691', 'SP00943749', 2, '1kg', 'Kiwi.jpg', 580000),
('CTDH008956661514455783', 'DH00609392451500', 'SP00534609', 1, '500g', 'ca_hoi.jpg', 125000),
('CTDH008989596010258142', 'DH00416709865274', 'SP00523506', 2, '1Lít', 'nuoc-ep-khom.jpg', 70000),
('CTDH009109719658718876', 'DH00609392451500', 'SP00523605', 1, '500g', 'chanh.jpg', 17000),
('CTDH009222535768639778', 'DH00556829212465', 'SP00672293', 2, '1kg', 'DuaChuot2.png', 28000),
('CTDH009552187454459670', 'DH00314756707141', 'SP00943749', 1, '500g', 'Kiwi.jpg', 145000),
('CTDH009797796363945856', 'DH00226004836771', 'SP00534609', 1, '500g', 'ca_hoi.jpg', 125000);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `dh_id` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dh_taikhoan` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dh_ngaydathang` datetime NOT NULL,
  `dh_trangthai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dh_diachi` varchar(300) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dh_sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dh_hinhthucthanhtoan` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dh_thanhtoan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`dh_id`, `dh_taikhoan`, `dh_ngaydathang`, `dh_trangthai`, `dh_diachi`, `dh_sodienthoai`, `dh_hinhthucthanhtoan`, `dh_thanhtoan`) VALUES
('DH00112891506809', '0707730850', '2021-07-03 10:21:52', 'THANHCONG', 'czccxcvxcv, Phường Hòa Khánh Bắc, Quận Liên Chiểu, Đà Nẵng', '0707730850', 'offline', 1027500),
('DH00181429070120', '0707730850', '2022-02-26 12:37:42', 'THANHCONG', 'sgfg, Xã An Ngãi, Huyện Long Điền, Bà Rịa - Vũng Tàu', '0707730850', 'offline', 92500),
('DH00226004836771', '0707730850', '2021-02-26 13:37:22', 'DANHANDON', 'vf, Phường Mỹ Độ, Thành phố Bắc Giang, Bắc Giang', '0707730850', 'offline', 230000),
('DH00266058463197', '0123456789', '2022-02-03 10:19:29', 'THANHCONG', '123/BC, Xã Côn Đảo, Huyện Côn Đảo, Bà Rịa - Vũng Tàu', '0123456789', 'offline', 85000),
('DH00287136704938', '0987654321', '2022-03-02 10:23:58', 'DANGGIAO', 'sxzcxcxcxcxc, Xã Hoàng Ninh, Huyện Việt Yên, Bắc Giang', '0987654321', 'offline', 402500),
('DH00305682460569', '0987654321', '2021-04-03 10:23:31', 'DANHANDON', 'sdsdsdsdsds, Xã Nhơn Hạnh, Thị xã An Nhơn, Bình Định', '0987654321', 'offline', 822500),
('DH00314756707141', '0123456789', '2022-01-03 10:20:06', 'THANHCONG', '123/EF, Xã Hoàng Ninh, Huyện Việt Yên, Bắc Giang', '0123456789', 'offline', 167500),
('DH00363688591999', '0987654321', '2022-03-07 10:03:22', 'DANHANDON', 'zxcxzcxzc, Xã Hương Mai, Huyện Việt Yên, Bắc Giang', '0987654321', 'offline', 52500),
('DH00416709865274', '0707730850', '2022-02-26 12:34:45', 'DAHUY', 'bv, Xã Côn Đảo, Huyện Côn Đảo, Bà Rịa - Vũng Tàu', '0707730850', 'offline', 92500),
('DH00508898538304', '0707730850', '2021-10-26 12:29:54', 'THANHCONG', 'C166D hẻm 15, Phường An Nghiệp, Quận Ninh Kiều, Cần Thơ', '0707730850', 'offline', 117500),
('DH00539272995637', '0123987654', '2020-03-03 10:20:47', 'THANHCONG', 'xcmxzcz, Phường 06, Quận 5, Hồ Chí Minh', '0123987654', 'offline', 362500),
('DH00550145948734', '0707730850', '2022-03-03 10:22:17', 'THANHCONG', 'ccvxcvxvc, Phường Xuất Hóa, Thành Phố Bắc Kạn, Bắc Kạn', '0707730850', 'offline', 29500),
('DH00567026559549', '0123987654', '2022-04-03 10:21:11', 'THANHCONG', 'cxzcxczxc, Phường Xuất Hóa, Thành Phố Bắc Kạn, Bắc Kạn', '0123987654', 'offline', 862500),
('DH00609392451500', '0987654321', '2022-03-04 12:55:29', 'CHOXACNHAN', 'dcxxcxzcxzczx, Phường Kim Liên, Quận Đống Đa, Hà Nội', '0987654321', 'offline', 164500),
('DH00618270034375', '0987654321', '2022-03-08 19:55:53', 'CHOXACNHAN', 'sdadasdsad, Xã Hoà Lạc, Huyện Phú Tân, An Giang', '0987654321', 'offline', 180000),
('DH00737612212469', '0987654321', '2022-03-07 09:31:15', 'THANHCONG', 'daccx, Xã Hiệp Xương, Huyện Phú Tân, An Giang', '0987654321', 'offline', 157500),
('DH00822200979281', '0707730850', '2022-01-26 13:38:33', 'THANHCONG', 'asdsdsxz, Xã Hà Vị, Huyện Bạch Thông, Bắc Kạn', '0707730850', 'offline', 227500),
('DH00827865427559', '0987654321', '2022-03-06 13:22:25', 'THANHCONG', 'sadasdasdasdasd, Xã Hòa Liên, Huyện Hòa Vang, Đà Nẵng', '0987654321', 'offline', 144500),
('DH00860174597140', '0987654321', '2022-03-07 08:38:15', 'DANHANDON', 'zcxczxczc, Phường 3, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', '0987654321', 'offline', 562500),
('DH00869388782431', '0707730850', '2021-05-26 12:35:10', 'THANHCONG', 'abc 123, Phường 3, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', '0707730850', 'offline', 109500),
('DH00901545942691', '0123456789', '2022-02-26 12:28:10', 'DANHANDON', '12A/68B hẻm 32, Xã Hiệp Xương, Huyện Phú Tân, An Giang', '0123456789', 'offline', 542500),
('DH00955998551593', '0123987654', '2021-07-26 12:24:14', 'DAHUY', '123/ABC, Phường An Phú, Quận 2, Hồ Chí Minh', '0123987654', 'offline', 47500),
('DH00978813766444', '0707730850', '2021-03-03 10:22:44', 'THANHCONG', 'sdczczxcxzc, Phường Tân Giang, Thành phố Hà Tĩnh, Hà Tĩnh', '0707730850', 'offline', 782500),
('DH00986366724089', '0123987654', '2022-02-26 12:25:20', 'DANGGIAO', 'nshdusb sdbsb, Phường 05, Quận 3, Hồ Chí Minh', '0123987654', 'offline', 207500);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `gh_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gh_sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gh_masanpham` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gh_donvitinh` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gh_dongia` float NOT NULL CHECK (`gh_dongia` >= 0),
  `gh_soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`gh_id`, `gh_sodienthoai`, `gh_masanpham`, `gh_donvitinh`, `gh_dongia`, `gh_soluong`) VALUES
('GH00161284240', '0987654321', 'SP00362741', '500g', 100000, 2),
('GH00218091708', '0707730850', 'SP00534609', '500g', 125000, 1),
('GH00235012638', '0987654321', 'SP00523605', '500g', 17000, 1),
('GH00517370082', '0707730850', 'SP00362741', '500g', 100000, 1),
('GH00961119042', '0707730850', 'SP00237105', '500g', 12500, 3);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_ma` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `kh_hoten` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `kh_gioitinh` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `kh_sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `kh_diachi` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `kh_taikhoan` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`kh_ma`, `kh_hoten`, `kh_gioitinh`, `kh_sodienthoai`, `kh_diachi`, `kh_taikhoan`) VALUES
('KH0011390845', 'Phạm Hoàng Tuấn', '', '0707730850', '', '0707730850'),
('KH0012917802', 'Nguyen Phuoc Nhan', '', '0987654321', '', '0987654321'),
('KH0028990454', 'Pham Thi My Linh', '', '0123456789', '', '0123456789'),
('KH0068158455', 'Truong Minh Tam', '', '0123', '', '0123'),
('KH0098262960', 'Pham Hoang Tuan', '', '0707730850', '', '0707730850');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `khmai_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `khmai_nhan` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `kmai_mota` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `kmai_giatri` float DEFAULT NULL,
  `kmai_giamtoida` float DEFAULT NULL,
  `kmai_dieukien` float NOT NULL,
  `kmai_ngaybatdau` date NOT NULL,
  `kmai_ngayketthuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`khmai_id`, `khmai_nhan`, `kmai_mota`, `kmai_giatri`, `kmai_giamtoida`, `kmai_dieukien`, `kmai_ngaybatdau`, `kmai_ngayketthuc`) VALUES
('DEAL20', '20%', 'Giảm 20% cho đơn từ 150.000đ', 0.2, 20000, 150000, '2022-02-15', '2022-03-15'),
('OFFSALE50', '50%', 'Giảm 50% cho đơn từ 400.000đ', 0.5, 60000, 400000, '2022-02-15', '2022-03-15'),
('SALE30K', '30K', 'Giảm 30.000đ cho đơn từ 100.000đ', 30000, NULL, 100000, '2022-02-15', '2022-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `lsp_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `lsp_tenloai` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`lsp_id`, `lsp_tenloai`) VALUES
('LSP0002', 'Rau củ sạch'),
('LSP0151', 'Thịt tươi sống'),
('LSP0407', 'Trái cây tươi'),
('LSP0437', 'Nước ép'),
('LSP0469', 'Thực phẩm dinh dưỡng'),
('LSP0568', 'Thực phẩm khô'),
('LSP0585', 'Thực phẩm nhập khẩu'),
('LSP0860', 'Hải sản tươi sống');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `nv_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nv_hoten` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nv_gioitinh` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `nv_ngaysinh` date DEFAULT NULL,
  `nv_sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nv_diachi` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`nv_id`, `nv_hoten`, `nv_gioitinh`, `nv_ngaysinh`, `nv_sodienthoai`, `nv_diachi`) VALUES
('NV0001', 'Phạm Hoàng Tuấn', 'Nam', '2000-07-28', '0707730850', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ'),
('NV0002', 'Phạm Thị Mỹ Linh', 'Nữ', '2001-08-14', '0123456789', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ'),
('NV0003', 'Trương Minh Tâm', 'Nam', '2000-05-12', '0135798642', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ'),
('NV0004', 'Lâm Thị Kiều Diễm', 'Nữ', '2000-02-09', '0975312468', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ'),
('NV0005', 'Nguyễn Thanh Thiện', 'Nam', '2000-01-15', '0998877665', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ'),
('NV0006', 'Edogawa Conan', 'Nam', '2002-07-29', '0122334455', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ'),
('NV0007', 'Cao Mỹ Hương', 'Nữ', '2001-02-09', '0901111111', 'C166D đường Trần Văn Hoài, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ');

-- --------------------------------------------------------

--
-- Table structure for table `quyenhantaikhoan`
--

CREATE TABLE `quyenhantaikhoan` (
  `qhtk_id` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `qhtk_quyenhan` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `quyenhantaikhoan`
--

INSERT INTO `quyenhantaikhoan` (`qhtk_id`, `qhtk_quyenhan`) VALUES
('NHANVIEN', 'Nhân viên'),
('QUANLY', 'Quản lý');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sp_tensanpham` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sp_gia` float NOT NULL CHECK (`sp_gia` >= 0),
  `sp_hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sp_donvitinh` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sp_tonkho` int(11) NOT NULL CHECK (`sp_tonkho` >= 0),
  `sp_maloai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`sp_id`, `sp_tensanpham`, `sp_gia`, `sp_hinhanh`, `sp_donvitinh`, `sp_tonkho`, `sp_maloai`) VALUES
('SP00237105', 'Cà rốt', 25000, 'CaRot.jpg', 'Kg', 13, 'LSP0002'),
('SP00345343', 'Thịt gà', 67000, 'thit_ga.jpg', 'Kg', 10, 'LSP0151'),
('SP00362741', 'Đào Hàn Quốc', 200000, 'dao.jpg', 'Kg', 4, 'LSP0407'),
('SP00401432', 'Trứng gà', 3000, 'trung-ga-2.jpg', 'Trứng', 59, 'LSP0568'),
('SP00408964', 'Táo xanh', 55000, 'tao.jpg', 'Kg', 16, 'LSP0407'),
('SP00424009', 'Nho không hạt', 355000, 'NhoUc.jpg', 'Kg', 20, 'LSP0407'),
('SP00455589', 'Gạo', 30000, 'gao-2.jpg', 'Kg', 120, 'LSP0568'),
('SP00523506', 'Nước ép thơm', 35000, 'nuoc-ep-khom.jpg', 'Lít', 3, 'LSP0437'),
('SP00523605', 'Chanh Đà Lạt', 34000, 'chanh.jpg', 'Kg', 12, 'LSP0002'),
('SP00534609', 'Cá hồi Nhật', 250000, 'ca_hoi.jpg', 'Kg', 15, 'LSP0860'),
('SP00540604', 'Thịt bò Úc', 380000, 'thit_bo.jpg', 'Kg', 10, 'LSP0151'),
('SP00580005', 'Bông cải xanh', 25000, 'bong_cai.jpg', 'Kg', 90, 'LSP0002'),
('SP00653698', 'Nước ép xoài', 25000, 'nuoc-ep-xoai.jpg', 'Lít', 0, 'LSP0437'),
('SP00672293', 'Dưa chuột', 14000, 'DuaChuot2.png', 'Kg', 23, 'LSP0002'),
('SP00672622', 'Tôm khô', 450000, 'tom-kho-size-s.jpg', 'Kg', 15, 'LSP0568'),
('SP00678778', 'Me Thái', 35000, 'MeThai.jpg', 'Kg', 15, 'LSP0407'),
('SP00691776', 'Đùi vịt', 68000, 'dui-vit.jpg', 'Kg', 7, 'LSP0151'),
('SP00765650', 'Cam', 45000, 'cam.jpg', 'Kg', 0, 'LSP0407'),
('SP00811582', 'Bánh mì', 5000, 'banh-mi-goi.jpg', 'Ổ', 0, 'LSP0568'),
('SP00834951', 'Cá hồi Nhật', 410000, 'ca-hoi-fillet2.jpg', 'Kg', 3, 'LSP0585'),
('SP00881615', 'Ớt chuông Đà Lạt', 55000, 'OtChuong.jpg', 'Kg', 0, 'LSP0002'),
('SP00888005', 'Nước ép cam', 55000, 'nuoc-ep-cam-2.png', 'Lít', 9, 'LSP0437'),
('SP00893200', 'Vãi thiều', 78000, 'vai-thieu.jpg', 'Kg', 33, 'LSP0407'),
('SP00935754', 'Nước ép dưa hấu', 45000, 'nuoc-ep-dua-hau.jpg', 'Lít', 8, 'LSP0437'),
('SP00936410', 'Hành Tây', 26000, 'HanhTayDL.jpg', 'Kg', 0, 'LSP0002'),
('SP00943749', 'Kiwi New Zealand', 290000, 'Kiwi.jpg', 'Kg', 25, 'LSP0407'),
('SP00995096', 'Thịt heo', 66000, 'thit_heo.jpg', 'Kg', 25, 'LSP0151');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `spkm_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `spkm_masanpham` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `spkm_tylegiam` int(11) DEFAULT NULL CHECK (`spkm_tylegiam` >= 0),
  `spkm_ngaybatdau` datetime DEFAULT NULL,
  `spkm_ngayketthuc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`spkm_id`, `spkm_masanpham`, `spkm_tylegiam`, `spkm_ngaybatdau`, `spkm_ngayketthuc`) VALUES
('KM0002345679', 'SP00881615', 30, '2022-01-29 00:00:00', '2022-02-28 00:00:00'),
('KM0010340570', 'SP00893200', 30, '2022-01-29 00:00:00', '2022-02-28 00:00:00'),
('KM0012020570', 'SP00834951', 30, '2022-01-29 00:00:00', '2022-02-28 00:00:00'),
('KM0012300679', 'SP00765650', 30, '2022-01-29 00:00:00', '2022-02-28 00:00:00'),
('KM0012345678', 'SP00943749', 30, '2022-02-28 00:00:00', '2022-01-29 04:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoankhachhang`
--

CREATE TABLE `taikhoankhachhang` (
  `tkkh_sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tkkh_matkhau` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tkkh_hoten` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `taikhoankhachhang`
--

INSERT INTO `taikhoankhachhang` (`tkkh_sodienthoai`, `tkkh_matkhau`, `tkkh_hoten`) VALUES
('0123456789', 'linh123', 'Phạm Thị Mỹ Linh'),
('0123987654', '123', 'Trương Minh Tâm'),
('0707730850', 'tuan123', 'Phạm Hoàng Tuấn'),
('0987654321', 'nhan456', 'Nguyễn Phước Nhân');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoanquantri`
--

CREATE TABLE `taikhoanquantri` (
  `tkqt_tendangnhap` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tkqt_matkhau` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tkqt_manhanvien` varchar(15) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tkqt_quyenhan` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tkqt_trangthai` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `taikhoanquantri`
--

INSERT INTO `taikhoanquantri` (`tkqt_tendangnhap`, `tkqt_matkhau`, `tkqt_manhanvien`, `tkqt_quyenhan`, `tkqt_trangthai`) VALUES
('CMHUONG007', 'cmhuong007', 'NV0007', 'NHANVIEN', 'LOCK'),
('ECONAN006', 'econan006', 'NV0006', 'QUANLY', 'OPEN'),
('LKDIEM004', 'lkdiem004', 'NV0004', 'NHANVIEN', 'OPEN'),
('NTTHIEN005', 'ntthien005', 'NV0005', 'NHANVIEN', 'LOCK'),
('PHTUAN001', 'phtuan001', 'NV0001', 'QUANLY', 'OPEN'),
('PMLINH002', 'pmlinh002', 'NV0002', 'NHANVIEN', 'OPEN'),
('TMTAM003', 'tmtam003', 'NV0003', 'NHANVIEN', 'OPEN');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `ttdh_id` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ttdh_trangthai` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`ttdh_id`, `ttdh_trangthai`) VALUES
('CHOXACNHAN', 'Chờ xác nhận'),
('DAHUY', 'Đã hủy'),
('DANGGIAO', 'Đang giao'),
('DANHANDON', 'Đã nhận đơn'),
('THANHCONG', 'Giao thành công');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaitaikhoan`
--

CREATE TABLE `trangthaitaikhoan` (
  `tttk_id` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tttk_trangthai` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `trangthaitaikhoan`
--

INSERT INTO `trangthaitaikhoan` (`tttk_id`, `tttk_trangthai`) VALUES
('LOCK', 'Bị khóa'),
('OPEN', 'Hoạt động');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagorys`
--
ALTER TABLE `catagorys`
  ADD PRIMARY KEY (`catagoryId`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ctdh_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`dh_id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`gh_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_ma`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`khmai_id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`lsp_id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`nv_id`);

--
-- Indexes for table `quyenhantaikhoan`
--
ALTER TABLE `quyenhantaikhoan`
  ADD PRIMARY KEY (`qhtk_id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`spkm_id`);

--
-- Indexes for table `taikhoankhachhang`
--
ALTER TABLE `taikhoankhachhang`
  ADD PRIMARY KEY (`tkkh_sodienthoai`);

--
-- Indexes for table `taikhoanquantri`
--
ALTER TABLE `taikhoanquantri`
  ADD PRIMARY KEY (`tkqt_tendangnhap`);

--
-- Indexes for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD PRIMARY KEY (`ttdh_id`);

--
-- Indexes for table `trangthaitaikhoan`
--
ALTER TABLE `trangthaitaikhoan`
  ADD PRIMARY KEY (`tttk_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
