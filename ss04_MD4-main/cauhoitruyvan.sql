-- 1.	Truy vấn tất cả thông tin về các khách hàng trong bảng khachhang.
select * from khachhang;

-- 2.	Truy vấn tên và địa chỉ của nhà cung cấp trong bảng nhacungcap.
select tenncc,diachi from nhacungcap;

-- 3.	Truy vấn thông tin về tất cả nhân viên trong bảng nhanvien.
select * from nhanvien;

-- 4.	Truy vấn tên sản phẩm, tên loại sản phẩm và giá bán của các sản phẩm trong bảng sanpham.
select sp.tensp,lsp.tenlsp,ctpx.giaban from ctphieuxuat ctpx 
join sanpham sp on ctpx.msp = sp.masp
join loaisp lsp on sp.mlsp = lsp.malsp;

-- 5.	Truy vấn tên loại sản phẩm và số lượng sản phẩm thuộc loại đó trong bảng sanpham.
select lsp.tenlsp,count(sp.masp) from loaisp lsp 
join sanpham sp on sp.mlsp = lsp.malsp
join ctphieunhap ctpn on sp.masp = ctpn.masps
group by lsp.malsp;

-- 6.	Truy vấn tên loại sản phẩm và số lượng sản phẩm thuộc loại đó, sắp xếp kết quả theo số lượng giảm dần.
select lsp.tenlsp,count(sp.masp) soluong from loaisp lsp 
join sanpham sp on sp.mlsp = lsp.malsp
join ctphieunhap ctpn on sp.masp = ctpn.masps
group by lsp.malsp
order by soluong desc;

-- 7.	Truy vấn tên nhân viên và tên khách hàng của tất cả các phiếu xuất trong bảng phieuxuat.
select nv.hoten,kh.tenkh from phieuxuat px
join khachhang kh on px.makhs = kh.makh
join nhanvien nv on px.manvs = nv.manv;

-- 8.	Truy vấn số lượng và giá bán của sản phẩm trong các phiếu xuất có mã số là 'PX002'.
select sl,giaban from ctphieuxuat where sopx like "PX002";

-- 9.	Truy vấn thông tin về các sản phẩm có giá bán lớn hơn hoặc bằng 10 triệu đồng.
select * from sanpham sp 
join ctphieuxuat ctpx on sp.masp = ctpx.msp
where ctpx.giaban >= 10000000;

-- 10.	Truy vấn thông tin về các sản phẩm có giá bán nằm trong khoảng từ 5 triệu đến 15 triệu đồng.
select * from sanpham sp 
join ctphieuxuat ctpx on sp.masp = ctpx.msp
where ctpx.giaban between 5000000 and 15000000;

-- 11.	Truy vấn tất cả các phiếu nhập và ngày nhập hàng của nhà cung cấp có mã số 'NCC003'.
select * from phieunhap where manccs like "NCC03";

-- 12.	Truy vấn tên sản phẩm và số lượng tồn kho (số lượng trong bảng ctphieuxuat trừ đi số lượng trong bảng ctphieunhap) của từng sản phẩm.
select sp.tensp,(ctpn.soluong - ctpx.sl) `tồn kho` from sanpham sp 
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp;

-- 13.	Truy vấn tên nhân viên, tên khách hàng và ngày bán của các phiếu xuất có ngày bán trong tháng 7 năm 2023.
select nv.hoten,kh.tenkh,px.ngayban from phieuxuat px 
join khachhang kh on px.makhs = kh.makh
join nhanvien nv on px.manvs = nv.manv
where month(px.ngayban) and year(px.ngayban);

-- 14.	Truy vấn tên nhân viên và tổng số lượng sản phẩm đã bán trong từng phiếu xuất.
select nv.hoten,px.sopx,sum(ctpx.sl) sales from phieuxuat px 
join ctphieuxuat ctpx on px.sopx = ctpx.spx
join nhanvien nv on px.manvs = nv.manv
group by px.sopx;

-- 15.	Truy vấn tên khách hàng và tổng số tiền đã chi tiêu trong từng phiếu xuất.
select kh.tenkh,sum(ctpx.sl * ctpx.giaban) from phieuxuat px 
join khachhang kh on px.makhs = kh.makh
join ctphieuxuat ctpx on px.sopx = ctpx.spx
group by px.sopx;

-- 16.	Truy vấn thông tin về nhà cung cấp và số lượng phiếu nhập mà họ đã tham gia.
select ncc.tenncc,count(pn.sopn) from phieunhap pn
join nhacungcap ncc on pn.manccs = ncc.mancc
group by ncc.mancc;

-- 17.	Truy vấn số lượng sản phẩm đã nhập và đã xuất theo từng loại sản phẩm.
select sp.tensp,sum(ctpn.soluong) `số lượng nhập`,sum(ctpx.sl) `số lượng xuất` from sanpham sp 
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
group by sp.mlsp,sp.tensp;

-- 18.	Truy vấn tên loại sản phẩm và tổng giá trị của sản phẩm thuộc loại đó.
select lsp.tenlsp,sum(ctpn.gianhap * ctpn.soluong) from sanpham sp 
join loaisp lsp on sp.mlsp = lsp.malsp
join ctphieunhap ctpn on sp.masp = ctpn.masps
group by lsp.malsp;

-- 19.	Truy vấn tên loại sản phẩm và số lượng phiếu xuất mà có sản phẩm thuộc loại đó.
select lsp.tenlsp,count(ctpx.spx) from sanpham sp 
join loaisp lsp on sp.mlsp = lsp.malsp
join ctphieuxuat ctpx on sp.masp = ctpx.msp
group by lsp.malsp;

-- 20.	Truy vấn thông tin về những phiếu nhập mà số lượng sản phẩm nhập vào ít hơn hoặc bằng 3.
select * from ctphieunhap where soluong <= 3;

-- 21.	Truy vấn thông tin về những phiếu nhập mà giá trị nhập vào lớn hơn hoặc bằng 50 triệu đồng.
select * from ctphieunhap where gianhap <= 50000000;

-- 22.	Truy vấn thông tin về những phiếu nhập mà nhân viên nhập hàng có địa chỉ ở Hà Nội.
select pn.* from phieunhap pn
join nhanvien nv on pn.manvs = nv.manv
where nv.noisinh like "hanoi";

-- 23.	Truy vấn thông tin về những phiếu xuất mà nhân viên xuất hàng có số điện thoại bắt đầu bằng '09'.
select px.* from phieuxuat px 
join nhanvien nv on px.manvs = nv.manv
where nv.dienthoai like "09%";

-- 24.	Truy vấn tên nhân viên và số lượng phiếu xuất mà họ đã thực hiện.
select nv.hoten,count(px.sopx) from phieuxuat px 
join nhanvien nv on nv.manv = px.manvs
group by nv.manv;

-- 25.	Truy vấn thông tin về những phiếu xuất mà khách hàng có mã số 'KH001' đã thực hiện.
select * from phieuxuat where makhs like "KH01";

-- 26.	Truy vấn thông tin về những phiếu xuất mà khách hàng có mã số 'KH002' đã thực hiện, sắp xếp kết quả theo ngày bán giảm dần.
select * from phieuxuat where makhs like "KH02" order by day(ngayban) desc;

-- 27.	Truy vấn số lượng sản phẩm nhập vào và số lượng sản phẩm xuất ra theo từng loại sản phẩm, sắp xếp kết quả theo tên loại sản phẩm.
select lsp.tenlsp,sum(ctpn.gianhap * ctpn.soluong) from sanpham sp 
join loaisp lsp on sp.mlsp = lsp.malsp
join ctphieunhap ctpn on sp.masp = ctpn.masps
group by lsp.malsp 
order by lsp.tenlsp;

-- 28.	Truy vấn tên nhân viên và số lượng phiếu xuất mà họ đã thực hiện trong năm 2023.
select nv.hoten,count(px.sopx) 'số lượng' from phieuxuat px 
join nhanvien nv on px.manvs = nv.manv
where year(px.ngayban) = 2023
group by nv.manv;

-- 29.	Truy vấn tên nhân viên và số lượng phiếu nhập mà họ đã thực hiện trong tháng 5 năm 2023.
select nv.hoten,count(pn.sopn) from phieunhap pn 
join nhanvien nv on pn.manvs = nv.manv
where month(pn.ngaynhap) = 5 and year(pn.ngaynhap) = 2023
group by nv.manv;

-- 30.	Truy vấn tên nhân viên và số lượng phiếu xuất mà họ đã thực hiện trong năm 2023, sắp xếp kết quả theo số lượng giảm dần.
select nv.hoten,count(px.sopx) 'số lượng' from phieuxuat px 
join nhanvien nv on px.manvs = nv.manv
where year(px.ngayban) = 2023
group by nv.manv
order by count(px.sopx) desc;

-- 31.	Truy vấn tên nhân viên và số lượng phiếu nhập mà họ đã thực hiện trong năm 2023, sắp xếp kết quả theo số lượng tăng dần.
select nv.hoten,count(pn.sopn) 'số lượng' from phieunhap pn 
join nhanvien nv on pn.manvs = nv.manv
where year(pn.ngaynhap) = 2023
group by nv.manv
order by count(pn.sopn);

-- 32.	Truy vấn tên khách hàng và số lượng phiếu xuất mà họ đã thực hiện trong năm 2023, sắp xếp kết quả theo số lượng giảm dần.
select kh.tenkh,count(px.sopx) 'số lượng' from phieuxuat px
join khachhang kh on px.makhs = kh.makh
where year(px.ngayban) = 2023
group by kh.makh
order by count(px.sopx) desc;

-- 33.	Truy vấn tên nhiên viên và số lượng phiếu nhập mà họ đã thực hiện trong năm 2023, sắp xếp kết quả theo số lượng tăng dần.
select kh.tenkh,count(pn.sopn) 'số lượng' from phieunhap pn
join khachhang kh on pn.makh = kh.makh
where year(pn.ngaynhap) = 2023
group by kh.makh
order by count(pn.sopn);

-- 34.	Truy vấn thông tin về những sản phẩm có trong phiếu nhập và không có trong phiếu xuất.
select * from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
where ctpn.masps = sp.masp and not ctpx.msp = sp.masp;

-- 35.	Truy vấn thông tin về những sản phẩm có trong phiếu xuất và không có trong phiếu nhập.
select * from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
where not ctpn.masps = sp.masp and ctpx.msp = sp.masp;

-- 36.	Truy vấn số lượng sản phẩm nhập vào và số lượng sản phẩm xuất ra của từng loại sản phẩm, và chỉ lấy các loại sản phẩm có số lượng nhập vào lớn hơn số lượng xuất ra.
select lsp.tenlsp,sum(ctpn.soluong) slnhap,sum(ctpx.sl) slxuat from sanpham sp 
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
join loaisp lsp on sp.mlsp = lsp.malsp
group by lsp.malsp
having slnhap > slxuat;

-- 37.	Truy vấn số lượng sản phẩm nhập vào và số lượng sản phẩm xuất ra của từng loại sản phẩm, và chỉ lấy các loại sản phẩm có số lượng nhập vào nhỏ hơn số lượng xuất ra.
select lsp.tenlsp,sum(ctpn.soluong) slnhap,sum(ctpx.sl) slxuat from sanpham sp 
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
join loaisp lsp on sp.mlsp = lsp.malsp
group by lsp.malsp
having slnhap < slxuat;

-- 38.	Truy vấn tên loại sản phẩm và số lượng sản phẩm đã nhập vào, sắp xếp kết quả theo số lượng giảm dần.
select lsp.tenlsp,sum(ctpn.soluong) soluong from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join loaisp lsp on lsp.malsp = sp.mlsp
group by lsp.malsp 
order by soluong desc;

-- 39.	Truy vấn tên loại sản phẩm và số lượng sản phẩm đã xuất ra, sắp xếp kết quả theo số lượng giảm dần.
select lsp.tenlsp,sum(ctpx.sl) soluong from sanpham sp
join ctphieuxuat ctpx on sp.masp = ctpx.msp
join loaisp lsp on lsp.malsp = sp.mlsp
group by lsp.malsp 
order by soluong desc;

-- 40.	Truy vấn tên loại sản phẩm và số lượng sản phẩm đã nhập vào, sắp xếp kết quả theo số lượng tăng dần.
select lsp.tenlsp,sum(ctpn.soluong) soluong from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join loaisp lsp on lsp.malsp = sp.mlsp
group by lsp.malsp 
order by soluong;

-- 41.	Truy vấn tên loại sản phẩm và số lượng sản phẩm đã xuất ra, sắp xếp kết quả theo số lượng tăng dần.
select lsp.tenlsp,sum(ctpx.sl) soluong from sanpham sp
join ctphieuxuat ctpx on sp.masp = ctpx.msp
join loaisp lsp on lsp.malsp = sp.mlsp
group by lsp.malsp 
order by soluong;

-- 42.	Truy vấn tên nhân viên và số lượng sản phẩm nhập vào của từng nhân viên, và chỉ lấy những nhân viên có số lượng nhập vào lớn hơn 10 sản phẩm.
select nv.hoten,sum(ctpn.soluong) from  nhanvien nv 
join phieunhap pn on nv.manv = pn.manvs
join ctphieunhap ctpn on ctpn.sopns = pn.sopn
group by nv.manv
having sum(ctpn.soluong) > 10;

-- 43.	Truy vấn tên nhân viên và số lượng sản phẩm xuất ra của từng nhân viên, và chỉ lấy những nhân viên có số lượng xuất ra nhỏ hơn 5 sản phẩm.
select nv.hoten,sum(ctpx.sl) from nhanvien nv 
join phieuxuat px on nv.manv = px.manvs
join ctphieuxuat ctpx on px.sopx = ctpx.spx
group by nv.manv
having sum(ctpx.sl) < 5;

-- 44.	Truy vấn thông tin về những sản phẩm có giá nhập vào nhỏ hơn 5 triệu đồng và giá xuất ra lớn hơn 10 triệu đồng.
select sp.* from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
where ctpn.gianhap < 5000000 and ctpx.giaban > 10000000;

-- 45.	Truy vấn thông tin về những sản phẩm có giá nhập vào lớn hơn giá xuất ra.
select sp.* from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
where ctpn.gianhap > ctpx.giaban;

-- 46.	Truy vấn tên loại sản phẩm và số lượng phiếu nhập mà loại sản phẩm đó không có trong phiếu xuất.
select lsp.tenlsp,count(ctpn.sopns) from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
join loaisp lsp on lsp.malsp = sp.mlsp
where ctpn.masps = sp.masp and not ctpx.msp = sp.masp
group by lsp.malsp;

-- 47.	Truy vấn tên loại sản phẩm và số lượng phiếu xuất mà loại sản phẩm đó không có trong phiếu nhập.
select lsp.tenlsp,count(ctpn.sopns) from sanpham sp
join ctphieunhap ctpn on sp.masp = ctpn.masps
join ctphieuxuat ctpx on sp.masp = ctpx.msp
join loaisp lsp on lsp.malsp = sp.mlsp
where not ctpn.masps = sp.masp and ctpx.msp = sp.masp
group by lsp.malsp;

-- 48.	Truy vấn thông tin về những nhà cung cấp mà không có phiếu nhập hoặc phiếu nhập có giá trị nhập vào lớn hơn 20 triệu đồng.
select ncc.* from nhacungcap ncc 
join phieunhap pn on ncc.mancc = pn.manccs
join ctphieunhap ctpn on pn.sopn = ctpn.sopns
where not ncc.mancc = pn.manccs or ctpn.gianhap > 20000000;

-- 49.	Truy vấn thông tin về những khách hàng mà không có phiếu xuất hoặc phiếu xuất có giá trị xuất ra nhỏ hơn 50 triệu đồng.
select kh.* from khachhang kh 
join phieuxuat px on kh.makh = px.makhs
join ctphieuxuat ctpx on px.sopx = ctpx.spx
where not kh.makh = px.makhs or ctpx.giaban < 50000000;

-- 50.	Truy vấn thông tin về những nhân viên mà không có phiếu nhập hoặc phiếu xuất trong năm 2023.
select nv.* from nhanvien nv
join phieunhap pn on nv.manv = pn.manvs
join phieuxuat px on nv.manv = px.manvs
where not (nv.manv = pn.manvs or nv.manv = px.manvs) and year(now()) = 2023;

