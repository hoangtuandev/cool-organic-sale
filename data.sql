INSERT INTO loaisanpham VALUES("LSP0002", "Rau củ sạch");
INSERT INTO loaisanpham VALUES("LSP0151", "Thịt tươi sống");
INSERT INTO loaisanpham VALUES("LSP0407", "Trái cây tươi");
INSERT INTO loaisanpham VALUES("LSP0860", "Hải sản tươi sống");
INSERT INTO loaisanpham VALUES("LSP0585", "Thực phẩm nhập khẩu");
INSERT INTO loaisanpham VALUES("LSP0568", "Thực phẩm khô");
INSERT INTO loaisanpham VALUES("LSP0469", "Thực phẩm dinh dưỡng");


INSERT INTO sanpham VALUES("SP000001", "Kiwi New Zealand",250000, "Kiwi.jpg", "Kg", 120, "LSP0407");
INSERT INTO sanpham VALUES("SP000002", "Măng cục",50000, "MangCut.jpg", "Kg", 100, "LSP0407");
INSERT INTO sanpham VALUES("SP000003", "Thịt gà",650000, "thit_ga.jpg", "Kg", 25, "LSP0151");
INSERT INTO sanpham VALUES("SP000004", "Thịt bò Úc",380000, "thit_bo.jpg", "Kg", 10, "LSP0151");
INSERT INTO sanpham VALUES("SP000005", "Bông cải xanh",25000, "bong_cai.jpg", "Kg", 120, "LSP0002");
INSERT INTO sanpham VALUES("SP000006", "Vãi thiều",750000, "vai-thieu.png", "Kg", 50, "LSP0407");
INSERT INTO sanpham VALUES("SP000007", "Cá hồi Nhật Bản",250000, "ca-hoi-fillet2.jpg", "Kg", 120, "LSP0407");
INSERT INTO sanpham VALUES("SP000008", "Khoai tây Đà Lạt",15000, "khoai-tay-F1.jpg", "Kg", 40, "LSP0002");
INSERT INTO sanpham VALUES("SP000009", "Cam vàng",550000, "cam.jpg", "Kg", 40, "LSP0407");
INSERT INTO sanpham VALUES("SP000010", "Ớt chuông Đà Lạt",35000, "OtChuong.jpg", "Kg", 120, "LSP0002");

INSERT INTO giohang VALUES("GH000001", "0987654321", "SP00362741", "1kg", 50000, 1);
INSERT INTO giohang VALUES("GH000002", "0987654321", "SP00408964", "500g", 50000, 2);
INSERT INTO giohang VALUES("GH000003", "0987654321", "SP00424009", "1kg", 50000, 1);
INSERT INTO giohang VALUES("GH000004", "0987654321", "SP00540604", "500g", 50000, 2);

INSERT INTO khuyenmai VALUES('DEAL20', '20%', 'Giảm 20% cho đơn từ 150.000đ', 0.2, 30000, 150000, '2022-02-15', '2022-03-15');
INSERT INTO khuyenmai VALUES('SALE30K', '30K', 'Giảm 30.000đ cho đơn từ 100.000đ', 30000, null, 100000, '2022-02-15', '2022-03-15');
INSERT INTO khuyenmai VALUES('OFFSALE50', '50%', 'Giảm 50% cho đơn từ 400.000đ', 0.5, 60000, 400000, '2022-02-15', '2022-03-15');

INSERT INTO trangthaidonhang VALUES('CHOXACNHAN', 'Chờ xác nhận');
INSERT INTO trangthaidonhang VALUES('DANHANDON', 'Đã nhận đơn');
INSERT INTO trangthaidonhang VALUES('DANGGIAO', 'Đang giao');
INSERT INTO trangthaidonhang VALUES('THANHCONG', 'Thành công');

INSERT INTO donhang  VALUES ('DH0001', '0123456789', '2022-02-22 11:48:32', 'CHOXACNHAN', 'C166D hẻm 15, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ', '0123456789', 'offline', 500500);

INSERT INTO donhang  VALUES ('DH0002', '0987654321', '2022-02-22 11:48:32', 'DANHANDON', 'C166D hẻm 15, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ', '0998877665', 'online', 450000);

INSERT INTO donhang  VALUES ('DH0003', '0707730850', '2022-02-22 11:48:32', 'DANGGIAO', 'C166D hẻm 15, phường Xuân Khánh, quận Ninh Kiều, Cần Thơ', '0122334455', 'online', 123500);

INSERT INTO chitietdonhang VALUES ('CTDH0001', 'DH0001', 'SP00237105', '2', '500g', 'dao.jpg', '25500');
INSERT INTO chitietdonhang VALUES ('CTDH0002', 'DH0001', 'SP00345343', '1', '1kg', 'dao.jpg', '355000');
INSERT INTO chitietdonhang VALUES ('CTDH0003', 'DH0002', 'SP00362741', '3', '500g', 'dao.jpg', '45000');
INSERT INTO chitietdonhang VALUES ('CTDH0004', 'DH0003', 'SP00401432', '2', '500g', 'dao.jpg', '105000');
INSERT INTO chitietdonhang VALUES ('CTDH0005', 'DH0003', 'SP00424009', '1', '1kg', 'dao.jpg', '26000');