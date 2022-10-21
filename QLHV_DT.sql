create database QuanLyOto1;

create table NhaCungCap(
MaNCC int primary key,
TenNhaCC varchar(200),
DiaChi varchar(200),
soDT varchar(200),
MaSoThue varchar(200)
);

create table LoaiDichVu(
MaLoaiDV int primary key,
TenLoaiDV varchar(200)
);

create table MucPhi(
MaMP int primary key,
DonGia int ,
Mota varchar(200)
);

create table DongXe(
DongXe varchar(200) primary key,
HangXe varchar(200),
SoChoNgoi int 
);

create table DangKyCungCap(
MaDangKyCC int primary key,
NgayBatDauCC date,
NgayKetThucCC date,
SoLuongXeDangKy int,

DongXe varchar(200),
MaNCC int,
MaLoaiDV int,
MaMP int,


foreign key (Dongxe) references DongXe(DongXe),
foreign key (MaMP) references MucPhi(MaMP),
foreign key(MaLoaiDV) references LoaiDichVu(MaLoaiDV),
foreign key(MaNCC) references NhaCungCap(MaNCC)
);

select* from dongxe where SoChoNgoi>=4;

select nhacungcap.DiaChi,dangkycungcap.DongXe
from
 dangkycungcap join  NhaCungCap on NhaCungCap.MaNCC =DangKyCungCap.MaNCC

join dongxe on dangkycungcap.DongXe = DongXe.dongxe

join mucphi on dangkycungcap.MaMP = mucphi.MaMP ;



-- cú phap tạo view
create view DangKyCungCap_DongXe
AS
select  dk.MaDangKyCC , dk.NgayBatDauCC , dk.NgayKetThucCC , dx.DongXe, dx.HangXe
from  dangkycungcap dk join dongxe dx  on dk.dongxe = dx.DongXe;


-- cú pháp update view.
create or replace view DangKyCungCap_DongXe
AS
select dk.MaDangKyCC, dk.NgayBatDauCC , dk.NgayKetThucCC , dx.DongXe, dx.HangXe , dx.SoChoNgoi 'Số chỗ ngồi'
from  dangkycungcap dk join dongxe dx  on dk.dongxe = dx.DongXe;


select * 
from dangkycungcap_dongxe;


-- Cú pháp xóa View
drop view dangkycungcap_dongxe;