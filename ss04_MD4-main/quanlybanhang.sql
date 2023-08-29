INSERT INTO khachhang (makh, tenkh, diachi, ngaysinh, sodt)
VALUES 
    ('KH01', 'Nguyen Van A', '123 ABC Street', '1990-01-01', '0123456789'),
    ('KH02', 'Tran Thi B', '456 XYZ Road', '1995-05-05', '0987654321'),
    ('KH03', 'Le Van C', '789 PQR Avenue', '1988-12-15', '0345678901'),
    ('KH04', 'Pham Thi D', '111 DEF Lane', '1992-09-30', '0765432109'),
    ('KH05', 'Hoang Van E', '222 HIJ Drive', '1985-06-20', '0234567890'),
    ('KH06', 'Nguyen Thi F', '333 LMN Circle', '1998-03-25', '0567890123'),
    ('KH07', 'Tran Van G', '444 STU Boulevard', '1991-11-10', '0876543210'),
    ('KH08', 'Le Thi H', '555 VWX Street', '1987-04-12', '0654321098'),
    ('KH09', 'Pham Van I', '666 YZK Road', '1996-08-28', '0456789012'),
    ('KH10', 'Hoang Thi J', '777 XYZ Avenue', '1993-07-05', '0890123456');
INSERT INTO nhanvien (manv, hoten, diachi, ngaysinh, dienthoai, dt, email, noisinh, ngaybilua, manql)
VALUES 
    ('NV01', 'Nguyen Van An', 1, '1985-03-10', '0123456789', '0123456789', 'an@company.com', 'Hanoi', '2020-01-01', NULL),
    ('NV02', 'Tran Thi Binh', 0, '1990-08-15', '0987654321', '0987654321', 'binh@company.com', 'Ho Chi Minh City', '2019-12-31', NULL),
    ('NV03', 'Le Van Cuong', 1, '1988-05-20', '0345678901', '0345678901', 'cuong@company.com', 'Da Nang', '2021-03-25', 'NV01'),
    ('NV04', 'Pham Thi Dung', 0, '1993-11-25', '0765432109', '0765432109', 'dung@company.com', 'Hue', '2022-05-15', 'NV02'),
    ('NV05', 'Hoang Van Eo', 1, '1996-06-30', '0234567890', '0234567890', 'eo@company.com', 'Quang Ninh', '2023-07-01', 'NV01'),
    ('NV06', 'Nguyen Thi Fong', 0, '1987-04-05', '0567890123', '0567890123', 'fong@company.com', 'Binh Dinh', '2022-09-10', 'NV03'),
    ('NV07', 'Tran Van Gia', 1, '1995-02-15', '0876543210', '0876543210', 'gia@company.com', 'Ha Tinh', '2023-01-05', 'NV04'),
    ('NV08', 'Le Thi Hoa', 0, '1989-09-20', '0654321098', '0654321098', 'hoa@company.com', 'Quang Nam', '2022-07-12', 'NV02'),
    ('NV09', 'Pham Van I', 1, '1992-12-12', '0456789012', '0456789012', 'i@company.com', 'Dak Lak', '2021-11-30', 'NV03'),
    ('NV10', 'Hoang Thi Kim', 0, '1997-07-22', '0890123456', '0890123456', 'kim@company.com', 'Can Tho', '2023-02-28', 'NV07');
INSERT INTO nhacungcap (mancc, tenncc, diachi, dt, email, web)
VALUES 
    ('NCC01', 'Công ty A', '123 Supplier Street', '0123456789', 'info@companya.com', 'www.companya.com'),
    ('NCC02', 'Công ty B', '456 Provider Road', '0987654321', 'info@companyb.com', 'www.companyb.com'),
    ('NCC03', 'Công ty C', '789 Distributor Avenue', '0345678901', 'info@companyc.com', 'www.companyc.com'),
    ('NCC04', 'Công ty D', '111 Wholesaler Lane', '0765432109', 'info@companyd.com', 'www.companyd.com'),
    ('NCC05', 'Công ty E', '222 Exporter Drive', '0234567890', 'info@companye.com', 'www.companye.com'),
    ('NCC06', 'Công ty F', '333 Importer Circle', '0567890123', 'info@companyf.com', 'www.companyf.com'),
    ('NCC07', 'Công ty G', '444 Manufacturer Boulevard', '0876543210', 'info@companyg.com', 'www.companyg.com'),
    ('NCC08', 'Công ty H', '555 Retailer Street', '0654321098', 'info@companyh.com', 'www.companyh.com'),
    ('NCC09', 'Công ty I', '666 Supplier Road', '0456789012', 'info@companyi.com', 'www.companyi.com'),
    ('NCC10', 'Công ty J', '777 Provider Avenue', '0890123456', 'info@companyj.com', 'www.companyj.com');

INSERT INTO loaisp (malsp, tenlsp, ghichu)
VALUES 
    ('LS01', 'Điện thoại', 'Các loại điện thoại'),
    ('LS02', 'Máy tính', 'Các loại máy tính'),
    ('LS03', 'Máy ảnh', 'Các loại máy ảnh'),
    ('LS04', 'Tivi', 'Các loại tivi'),
    ('LS05', 'Tủ lạnh', 'Các loại tủ lạnh'),
    ('LS06', 'Máy giặt', 'Các loại máy giặt'),
    ('LS07', 'Điều hòa', 'Các loại điều hòa'),
    ('LS08', 'Laptop', 'Các loại laptop'),
    ('LS09', 'Thiết bị âm thanh', 'Các loại thiết bị âm thanh'),
    ('LS10', 'Phụ kiện điện tử', 'Các loại phụ kiện điện tử');

INSERT INTO sanpham (masp, mlsp, tensp, donvitinh, gichu)
VALUES 
    ('SP01', 'LS01', 'Điện thoại A', 'Cái', 'Điện thoại thương hiệu A'),
    ('SP02', 'LS02', 'Laptop B', 'Cái', 'Laptop thương hiệu B'),
    ('SP03', 'LS03', 'Máy ảnh C', 'Cái', 'Máy ảnh thương hiệu C'),
    ('SP04', 'LS04', 'Tivi D', 'Cái', 'Tivi thương hiệu D'),
    ('SP05', 'LS05', 'Tủ lạnh E', 'Cái', 'Tủ lạnh thương hiệu E'),
    ('SP06', 'LS06', 'Máy giặt F', 'Cái', 'Máy giặt thương hiệu F'),
    ('SP07', 'LS07', 'Điều hòa G', 'Cái', 'Điều hòa thương hiệu G'),
    ('SP08', 'LS08', 'Laptop H', 'Cái', 'Laptop thương hiệu H'),
    ('SP09', 'LS09', 'Loa bluetooth I', 'Cái', 'Loa bluetooth thương hiệu I'),
    ('SP10', 'LS10', 'Ốp lưng điện thoại', 'Cái', 'Ốp lưng cho điện thoại');


INSERT INTO phieunhap (sopn, manvs, manccs, ngaynhap, ghichu)
VALUES 
    ('PN001', 'NV01', 'NCC01', '2023-01-10', 'Phiếu nhập số 1'),
    ('PN002', 'NV02', 'NCC02', '2023-02-15', 'Phiếu nhập số 2'),
    ('PN003', 'NV03', 'NCC03', '2023-03-20', 'Phiếu nhập số 3'),
    ('PN004', 'NV04', 'NCC04', '2023-04-25', 'Phiếu nhập số 4'),
    ('PN005', 'NV05', 'NCC05', '2023-05-30', 'Phiếu nhập số 5'),
    ('PN006', 'NV06', 'NCC06', '2023-06-05', 'Phiếu nhập số 6'),
    ('PN007', 'NV07', 'NCC07', '2023-07-10', 'Phiếu nhập số 7'),
    ('PN008', 'NV08', 'NCC08', '2023-08-15', 'Phiếu nhập số 8'),
    ('PN009', 'NV09', 'NCC09', '2023-09-20', 'Phiếu nhập số 9'),
    ('PN010', 'NV10', 'NCC10', '2023-10-25', 'Phiếu nhập số 10');


INSERT INTO ctphieunhap (masps, sopns, soluong, gianhap)
VALUES 
    ('SP01', 'PN001', 5, 5000000),
    ('SP02', 'PN001', 3, 15000000),
    ('SP03', 'PN002', 2, 8000000),
    ('SP04', 'PN002', 1, 12000000),
    ('SP05', 'PN003', 4, 6000000),
    ('SP06', 'PN003', 2, 7000000),
    ('SP07', 'PN004', 3, 9000000),
    ('SP08', 'PN004', 5, 17000000),
    ('SP09', 'PN005', 6, 3000000),
    ('SP10', 'PN005', 10, 2000000);

INSERT INTO phieuxuat (sopx, manvs, makhs, ngayban, ghichu)
VALUES 
    ('PX001', 'NV01', 'KH01', '2023-01-20', 'Phiếu xuất số 1'),
    ('PX002', 'NV02', 'KH02', '2023-02-25', 'Phiếu xuất số 2'),
    ('PX003', 'NV03', 'KH03', '2023-03-30', 'Phiếu xuất số 3'),
    ('PX004', 'NV04', 'KH04', '2023-04-05', 'Phiếu xuất số 4'),
    ('PX005', 'NV05', 'KH05', '2023-05-10', 'Phiếu xuất số 5'),
    ('PX006', 'NV06', 'KH06', '2023-06-15', 'Phiếu xuất số 6'),
    ('PX007', 'NV07', 'KH07', '2023-07-20', 'Phiếu xuất số 7'),
    ('PX008', 'NV08', 'KH08', '2023-08-25', 'Phiếu xuất số 8'),
    ('PX009', 'NV09', 'KH09', '2023-09-30', 'Phiếu xuất số 9'),
    ('PX010', 'NV10', 'KH10', '2023-10-05', 'Phiếu xuất số 10');


INSERT INTO ctphieuxuat (spx, msp, sl, giaban)
VALUES 
    ('PX001', 'SP01', 2, 7000000),
    ('PX001', 'SP02', 1, 12000000),
    ('PX002', 'SP02', 2, 14000000),
    ('PX003', 'SP03', 3, 8500000),
    ('PX004', 'SP04', 1, 15000000),
    ('PX005', 'SP05', 2, 6500000),
    ('PX005', 'SP06', 1, 7500000),
    ('PX006', 'SP06', 2, 8000000),
    ('PX007', 'SP07', 1, 10000000),
    ('PX008', 'SP08', 3, 18000000);

