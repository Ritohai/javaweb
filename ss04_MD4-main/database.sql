create database  QUANLYBANHANG;
use  QUANLYBANHANG;

create table khachhang(
makh varchar(4) primary key,
tenkh varchar(30),
diachi varchar(50),
ngaysinh datetime,
sodt varchar(15)
);

create table nhanvien(
manv varchar(4) primary key,
hoten varchar(30),
diachi bit,
ngaysinh datetime,
dienthoai varchar(50),
dt  varchar(15),
email text,
noisinh varchar(20),
ngaybilua datetime,
manql varchar(4)
);

create table nhacungcap(
mancc varchar(5) primary key,
tenncc varchar(50),
diachi varchar(50),
dt varchar(15),
email varchar(30),
web varchar(30)
);

create table loaisp (
malsp varchar(4) primary key,
tenlsp varchar(30),
ghichu varchar(100)
);

create table sanpham(
masp varchar(4) primary key,
mlsp varchar(4),
tensp varchar(50),
donvitinh varchar(10),
gichu varchar(100),
foreign key(mlsp) references loaisp(malsp)
);

create table phieunhap(
sopn varchar(5) primary key,
manvs varchar(4),
manccs varchar(5),
ngaynhap datetime,
ghichu varchar(100),
foreign key(manvs) references nhanvien(manv),
foreign key(manccs) references nhacungcap(mancc)
);

create table ctphieunhap(
masps varchar(4),
sopns varchar(5),
soluong smallint,
gianhap real,
foreign key(masps) references sanpham(masp),
foreign key(sopns) references phieunhap(sopn),
primary key (masps,sopns)
);

create table phieuxuat (
sopx varchar(5) primary key,
manvs varchar(4),
makhs varchar(4),
ngayban datetime,
ghichu text,
foreign key(manvs) references nhanvien(manv),
foreign key(makhs) references khachhang(makh)
);

create table ctphieuxuat (
spx varchar(5),
msp varchar(4),
sl smallint,
giaban real,
foreign key(spx) references phieuxuat(sopx),
foreign key(msp) references sanpham(masp),
primary key (spx,msp)
);



