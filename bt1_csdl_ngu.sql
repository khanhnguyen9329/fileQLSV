create database BT1_CSDL_Ngu;
USE BT1_CSDL_Ngu;

CREATE TABLE tChiTietHDB(
                            SoHDB nvarchar(10) NOT NULL,
                            MaSach nvarchar(10) NOT NULL,
                            SLBan int NULL,
                            KhuyenMai nvarchar(100) NULL,
                            CONSTRAINT PK_tChiTietHDB PRIMARY KEY CLUSTERED
                                (
                                 SoHDB ASC,
                                 MaSach ASC
                                    )
);
/****** Object:  Table tChiTietHDN    Script Date: 17/09/2020 4:10:49 CH ******/

CREATE TABLE tChiTietHDN(
                                SoHDN nvarchar(10) NOT NULL,
                                MaSach nvarchar(10) NOT NULL,
                                SLNhap int NULL,
                                KhuyenMai nvarchar(100) NULL,
                                CONSTRAINT PK_tChiTietHDN PRIMARY KEY CLUSTERED
                                    (
                                     SoHDN ASC,
                                     MaSach ASC
                                        )
);

CREATE TABLE tHoaDonBan(
                               SoHDB nvarchar(10) NOT NULL,
                               MaNV nvarchar(10) NULL,
                               NgayBan datetime NULL,
                               MaKH nvarchar(10) NULL,
                               CONSTRAINT PK_tHoaDonBan PRIMARY KEY CLUSTERED
                                   (
                                    SoHDB ASC
                                       )
);
CREATE TABLE tHoaDonNhap(
                                SoHDN nvarchar(10) NOT NULL,
                                MaNV nvarchar(10) NULL,
                                NgayNhap datetime NULL,
                                MaNCC nvarchar(10) NULL,
                                CONSTRAINT PK_tHoaDonNhap PRIMARY KEY CLUSTERED
                                    (
                                     SoHDN ASC
                                        )
);
CREATE TABLE tKhachHang(
                               MaKH nvarchar(10) NOT NULL,
                               TenKH nvarchar(50) NULL,
                               DiaChi nvarchar(150) NULL,
                               DienThoai nvarchar(15) NULL,
                               CONSTRAINT PK_tKhachHang PRIMARY KEY CLUSTERED
                                   (
                                    MaKH ASC
                                       )
);
CREATE TABLE tNhaCungCap(
                                MaNCC nvarchar(10) NOT NULL,
                                TenNCC nvarchar(200) NULL,
                                CONSTRAINT PK_tNhaCungCap PRIMARY KEY CLUSTERED
                                    (
                                     MaNCC ASC
                                        )
);
CREATE TABLE tNhanVien(
                              MaNV nvarchar(10) NOT NULL,
                              TenNV nvarchar(50) NULL,
                              GioiTinh nvarchar(5) NULL,
                              NgaySinh datetime NULL,
                              DiaChi nvarchar(150) NULL,
                              DienThoai nvarchar(15) NULL,
                              CONSTRAINT PK_tNhanVien PRIMARY KEY CLUSTERED
                                  (
                                   MaNV ASC
                                      )
);
CREATE TABLE tNhaXuatBan(
                                MaNXB nvarchar(10) NOT NULL,
                                TenNXB nvarchar(100) NULL,
                                CONSTRAINT PK_tNhaXuatBan PRIMARY KEY CLUSTERED
                                    (
                                     MaNXB ASC
                                        )
);
CREATE TABLE tSach(
                          MaSach nvarchar(10) NOT NULL,
                          TenSach nvarchar(200) NULL,
                          TacGia nvarchar(150) NULL,
                          MaTheLoai nvarchar(10) NULL,
                          MaNXB nvarchar(10) NULL,
                          DonGiaNhap float NULL,
                          DonGiaBan float NULL,
                          SoLuong int NULL,
                          SoTrang int NULL,
                          TrongLuong nvarchar(50) NULL,
                          Anh nvarchar(20) NULL,
                          CONSTRAINT PK_tSach PRIMARY KEY CLUSTERED
                              (
                               MaSach ASC
                                  )
);
CREATE TABLE tTheLoai(
                             MaTheLoai nvarchar(10) NOT NULL,
                             TenTheLoai nvarchar(100) NULL,
                             CONSTRAINT PK_tTheLoai PRIMARY KEY CLUSTERED
                                 (
                                  MaTheLoai ASC
                                     )
);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S01', 7, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S02', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S04', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB02', N'S04', 9, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB02', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S02', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S06', 7, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S08', 11, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S03', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S04', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S10', 9, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S07', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S08', 14, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S02', 13, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S05', 1, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S10', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S11', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S01', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S06', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S08', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S01', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S06', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S07', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S03', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S06', 1, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S09', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S07', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S11', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S13', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S04', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S08', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S11', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S09', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S12', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S02', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S03', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S04', 2, NULL);

INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN01', N'S01', 20, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN02', N'S06', 10, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN03', N'S03', 20, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN04', N'S09', 10, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN05', N'S06', 15, NULL);

INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB01', N'NV01', CAST(N'2014-08-11T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB02', N'NV02', CAST(N'2014-05-03T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB03', N'NV03', CAST(N'2013-12-01T00:00:00.000' AS DateTime), N'KH03');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB04', N'NV04', CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB05', N'NV04', CAST(N'2014-05-14T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB06', N'NV05', CAST(N'2014-06-30T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB07', N'NV06', CAST(N'2014-05-10T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB08', N'NV01', CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB09', N'NV01', CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB10', N'NV02', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB11', N'NV03', CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB12', N'NV03', CAST(N'2014-07-10T00:00:00.000' AS DateTime), N'KH03');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB13', N'NV05', CAST(N'2014-04-12T00:00:00.000' AS DateTime), N'KH04');

INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN01', N'NV02', CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'NCC01');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN02', N'NV01', CAST(N'2014-06-28T00:00:00.000' AS DateTime), N'NCC03');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN03', N'NV04', CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'NCC06');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN04', N'NV05', CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'NCC04');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN05', N'NV03', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'NCC05');

INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH01', N'Nguy???n ????nh S??n', N'B???c Ninh', N'0968686868');
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH02', N'????? V??n B???c', N'H???i D????ng', N'0918273645');
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH03', N'M???nh Th?????ng Qu??n', N'Portugal', N'0918688685');
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH04', N'M10', N'Argentina', N'0978656790');

INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC01', N'B??ch Vi???t');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC02', N'NXB Tr???');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC03', N'Ph?? H?? book');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC04', N'Alphabooks');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC05', N'TGM Books');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC06', N'Th??i H??');

INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV01', N'Tr???n Huy', N'Nam', CAST(N'1990-09-11T00:00:00.000' AS DateTime), N'H?? N???i', N'0986868686');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV02', N'Thanh T??m', N'N???', CAST(N'1986-01-12T00:00:00.000' AS DateTime), N'B???c Ninh', N'0979657676');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV03', N'Nguy???n Minh', N'Nam', CAST(N'1989-07-05T00:00:00.000' AS DateTime), N'H???i D????ng', N'0968145689');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV04', N'Phan Cao', N'Nam', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Ninh B??nh', N'0985143235');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV05', N'B??i Ng???c', N'N???', CAST(N'1987-03-01T00:00:00.000' AS DateTime), N'Th??i B??nh', N'0918167892');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV06', N'Nguy???n Ho??ng', N'Nam', CAST(N'1990-04-04T00:00:00.000' AS DateTime), N'Nam ?????nh', N'0962091660');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV07', N'Nguy???n H???i', N'Nam', CAST(N'1994-05-05T00:00:00.000' AS DateTime), N'H?? N???i', N'0962091666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV08', N'????? Th???o', N'N???', CAST(N'1990-06-06T00:00:00.000' AS DateTime), N'H?? N???i', N'0962099666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV09', N'????? Th???o Ph????ng', N'N???', CAST(N'1990-07-07T00:00:00.000' AS DateTime), N'H?? N???i', N'0966666666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV10', N'????? Huy Long', N'Nam', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'Nam ?????nh', N'0983646585');

INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB01', N'NXB Kim ?????ng');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB02', N'NXB Tr???');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB03', N'NXB Th??ng Long');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB04', N'NXB Nh?? Nam');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB05', N'NXB Gi??o D???c');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB06', N'NXB Fahasa');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB07', N'NXB Ph????ng Nam');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB08', N'NXB ??H GTVT');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB09', N'NXB ??H QGHN');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB10', N'NXB Th??? ????');

INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S01', N'S???ng v?? kh??t v???ng', N'Tr???n ????ng Khoa', N'TL01', N'NXB01', 100000.0000, 108000.0000, 120, 365, N'638 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S02', N'Cha N??n D???y Con Nh?? Th??? N??o?', N'V????ng Ba, V????ng Tr?? Di???m', N'TL01', N'NXB04', 60000.0000, 69000.0000, 70, 264, N'440 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S03', N'Tr???n ch???y v?? y??u th????ng', N'Maya banks', N'TL06', N'NXB02', 105000.0000, 115000.0000, 45, 508, N'450 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S04', N'Anh s??? y??u em m??i ch???', N'G??o', N'TL06', N'NXB05', 65000.0000, 89000.0000, 78, 320, N'374 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S05', N'Th??? gi???i ph???ng ( T??i b???n n??m 2014)', N'Thomas L.Friedman', N'TL05', N'NXB03', 245000.0000, 272000.0000, 56, 818, N'902 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S06', N'Gi??o tr??nh C++ & l???p tr??nh h?????ng ?????i t?????ng', N'GS. Ph???m V??n ???t', N'TL05', N'NXB06', 64000.0000, 78000.0000, 89, 496, N'650 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S07', N'Manchester United - Thi??n s??? v??? qu??? ?????', N'Jim White', N'TL03', N'NXB07', 135000.0000, 149000.0000, 68, 639, N'720 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S08', N'C??t b???i th???i gian', N'Sidney Sheldon', N'TL04', N'NXB05', 80000.0000, 92000.0000, 45, 482, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S09', N'T??? h???c b???o m???t v?? qu???n tr??? m???ng', N'Mai H????ng', N'TL02', N'NXB08', 41000.0000, 48000.0000, 79, 344, N'480 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S10', N'Tri???u ph?? kh???i nghi???p t??? hai b??n tay tr???ng', N'Tri???u Ph??m V??', N'TL05', N'NXB09', 115000.0000, 130000.0000, 43, 452, N'506 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S11', N'C???u tr??c d??? li???u v?? gi???i thu???t', N'H??? ?????c Ph????ng', N'TL02', N'NXB10', 110000.0000, 150000.0000, 80, 300, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S12', N'L???p Tr??nh C', N'Ph???m V??n ???t', N'TL02', N'NXB10', 100000.0000, 130000.0000, 80, 440, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S13', N'Kh??ng ai qua s??ng', N'L??? Ng???c T??', N'TL01', N'NXB10', 100000.0000, 140000.0000, 80, 330, N'330 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S14', N'????n ?????u xu h?????ng', N'Rohit Bhargava', N'TL01', N'NXB10', 200000.0000, 250000.0000, 60, 220, N'200 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S15', N'????? con ???????c ???m', N'Nguy???n Th??? ??oan', N'TL01', N'NXB10', 200000.0000, 300000.0000, 40, 400, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S16', N'B??c x??c l??m ta v?? c???m', N'?????ng Ho??ng Giang', N'TL01', N'NXB10', 200000.0000, 300000.0000, 50, 400, N'300 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S17', N'Tony bu???i s??ng - tr??n ???????ng b??ng', N'Tony Bu???i S??ng', N'TL01', N'NXB09', 250000.0000, 300000.0000, 30, 300, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S18', N'?????ng bao gi??? ??i ??n m???t m??nh', N'Keith Ferrazzi', N'TL01', N'NXB09', 300000.0000, 400000.0000, 60, 555, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S19', N'Ng??y x??a c?? m???t con b??', N'Camilo Cruz', N'TL01', N'NXB09', 300000.0000, 450000.0000, 60, 400, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S20', N'T??i th???y hoa v??ng tr??n c??? xanh', N'Nguy???n nh???t ??nh', N'TL01', N'NXB09', 300000.0000, 400000.0000, 80, 550, N'300 gram', NULL);

INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL01', N'B?? quy???t Cu???c s???ng');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL02', N'S??ch Tin h???c');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL03', N'Th??? Thao, Du l???ch');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL04', N'V??n h??a, Ngh??? thu???t');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL05', N'S??ch Kinh doanh');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL06', N'S??ch Khuy???n m???i, S??ch m???i ph??t h??nh');

-- 1. In ra danh s??ch c??c s??ch ch??? l???y (MaSach,TenSach) do Nh?? xu???t b???n Gi??o D???c xu???t b???n.
select Masach, tensach, TenNXB from tsach inner join tnhaxuatban 
	on tnhaxuatban.MaNXB = tsach.MaNXB
 where TenNXB = "NXB Gi??o D???c";

-- 2. In ra danh s??ch c??c s??ch c?? t??n b???t ?????u l?? ???Ng??y???.
select tenSach from tSach where tenSach like "Ng??y%";

-- 3. In ra danh s??ch c??c s??ch (MaSach,TenSach) do Nh?? xu???t b???n Gi??o D???c c?? gi?? t??? 100.000 
-- ?????n 150.000.
select Masach, tensach, TenNXB, DonGiaBan  from tsach inner join tnhaxuatban 
	on tnhaxuatban.MaNXB = tsach.MaNXB
 where TenNXB = "NXB Gi??o D???c" and (DonGiaBan >= 100000 and DonGiaBan <= 150000);
 --  2 c??ch vi???t gi???ng nhau.
 select Masach, tensach, TenNXB, DonGiaBan  from tsach inner join tnhaxuatban 
	on tnhaxuatban.MaNXB = tsach.MaNXB
 where TenNXB = "NXB Gi??o D???c" and DonGiaBan between 100000 and 150000;

-- 4. In ra danh s??ch c??c c??c s??ch (MaSach,TenSach) do Nh?? xu???t b???n Gi??o D???c ho???c Nh?? 
-- Xu???t B???n Tr??? s???n xu???t c?? gi?? t??? 90.000 ?????n 140.000.
select Masach, tensach, TenNXB, DonGiaBan  from tsach inner join tnhaxuatban 
	on tnhaxuatban.MaNXB = tsach.MaNXB
 where (TenNXB = "NXB Gi??o D???c" or TenNXB = "NXB Tr???") and (DonGiaBan between 90000 and 140000);

-- 5. In ra c??c s??? h??a ????n, tr??? gi?? h??a ????n b??n ra trong ng??y 08/11/2014 v?? ng??y 31/12/2014.
select tchitiethdb.SoHDB, sum(SLBan * DonGiaBan) as "Gtri HD", NgayBan from thoadonban inner join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
inner join TSach on tSach.maSach = tchitiethdb.MaSach
where NgayBan = "2014-08-11" or NgayBan = "2014-05-03"
group by SoHDB order by sum(SLBan * DonGiaBan) asc;


-- 6. In ra c??c s??? h??a ????n, tr??? gi?? h??a ????n trong th??ng 4/2014, s???p x???p theo ng??y (t??ng d???n) v?? 
-- tr??? gi?? c???a h??a ????n (gi???m d???n).
select tchitiethdb.SoHDB, sum(SLBan * DonGiaBan) as "Gtri HD", NgayBan from thoadonban inner join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
inner join TSach on tSach.maSach = tchitiethdb.MaSach
where year(NgayBan) = 2014 and month(NgayBan) = 4
group by SoHDB 
order by NgayBan asc, sum(SLBan * DonGiaBan) desc;

-- 7. In ra danh s??ch c??c kh??ch h??ng (MaKH, TenKH) ???? mua h??ng trong ng??y 10/4/2014.
select tkhachhang.MaKH, TenKH from tkhachhang inner join thoadonban on tkhachhang.MaKH = thoadonban.MaKH
where NgayBan = "2014-04-10";

-- 8. In ra s??? h??a ????n, tr??? gi?? c??c h??a ????n do nh??n vi??n c?? t??n ???Tr???n Huy??? l???p trong ng??y 
-- ???11/8/2014???
select tchitiethdb.SoHDB, sum(SLBan * DonGiaBan) as "Gtri HD", NgayBan, TenNV from thoadonban 
inner join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
inner join TSach on tSach.maSach = tchitiethdb.MaSach 
inner join tnhanvien on thoadonban.MaNV = tnhanvien.MaNV
where TenNV = "Tr???n Huy" and NgayBan = "2014-08-11"
group by SoHDB order by NgayBan asc, sum(SLBan * DonGiaBan) desc;

-- 9. In ra danh s??ch c??c s??ch (MaSach,TenSach) ???????c kh??ch h??ng c?? t??n ???Nguy???n ????nh S??n??? 
-- mua trong th??ng 8/2014.
select tsach.MaSach, TenSach, TenKH, NgayBan from tsach inner join tchitiethdb on tchitiethdb.MaSach = tsach.MaSach
inner join thoadonban on tchitiethdb.SoHDB = thoadonban.SoHDB
inner join tkhachhang on thoadonban.MaKH = tkhachhang.MaKH
where TenKH = "Nguy???n ????nh S??n" and NgayBan like "2014-08%";

-- 10. T??m c??c s??? h??a ????n ???? mua s??ch ???C???u tr??c d??? li???u v?? gi???i thu???t???
select thoadonban.SoHDB, TenSach from tsach inner join tchitiethdb on tchitiethdb.MaSach = tsach.MaSach
inner join thoadonban on tchitiethdb.SoHDB = thoadonban.SoHDB
where TenSach = "C???u tr??c d??? li???u v?? gi???i thu???t";
-- 11. T??m c??c s??? h??a ????n ???? mua s???n ph???m c?? m?? s??? ???S01??? ho???c ???S02???, m???i s???n ph???m mua v???i 
-- s??? l?????ng t??? 10 ?????n 20

select thoadonban.SoHDB, tchitiethdb.MaSach , tchitiethdb.SLBan
from thoadonban join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
where (tchitiethdb.MaSach = 'S01' or tchitiethdb.MaSach = 'S02') and (SLBan >=10 and SLBan<20);

-- 12.T??m c??c s??? h??a ????n mua c??ng l??c 2 s???n ph???m c?? m?? s??? ???S10??? v?? ???S11???, m???i s???n ph???m 
-- mua v???i s??? l?????ng t??? 5 ?????n 10

create view SoHDB_S10
as
select thoadonban.SoHDB, SLBan, MaSach
from thoadonban join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
where tchitiethdb.MaSach = 'S10' and (SLBan >=5 and SLBan <=10 );

create view SoHDB_S11
as
select thoadonban.SoHDB,SLBan, MaSach
from thoadonban join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
where tchitiethdb.MaSach = 'S11'and (SLBan >=5 and SLBan <=10 ) ;

-- 13. In ra danh s??ch c??c s??ch kh??ng b??n ???????c.
select * 
from thoadonban join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB;

-- 18. Cho bi???t tr??? gi?? h??a ????n cao nh???t, th???p nh???t l?? bao nhi??u
select thoadonban.SoHDB,SLBan,DonGiaBan, sum(SLBan*DonGiaBan)'t???ng h??a ??on b??n'
from
thoadonban join tchitiethdb on thoadonban.SoHDB = tchitiethdb.SoHDB
join tsach on tchitiethdb.MaSach = tsach.MaSach
 group by SoHDB;

-- 41 T??nh t???ng s??? l?????ng s??ch nh???p trong n??m 2014
select sum(SLNhap) 'T???ng s??? l?????ng nh???p'
from thoadonnhap join tchitiethdn on thoadonnhap.SoHDN= tchitiethdn.SoHDN
where year(NgayNHap)=  2014;

 -- 42 T??nh t???ng s??? l?????ng s??ch b??n trong n??m 2014
select sum(SLban) 'T???ng s??? l?????ng b??n'
from thoadonban join tchitiethdb on thoadonban.SoHDb= tchitiethdb.SoHDb
where year(Ngayban)=  2014;

-- 43. T??nh t???ng ti???n ???? b??n trong n??m 2014
select  sum(Slban*DonGiaBan)'T???ng ti???n ???? b??n 2014'
from tchitiethdb join tsach on tchitiethdb.MaSach = tsach.MaSach
join thoadonban on thoadonban.SoHDB = tchitiethdb.SoHDB
where year(Ngayban)=  2014;

-- 44. T??nh t???ng ti???n ???? nh???p trong n??m 2014
select sum(Slnhap*DonGianhap)' t???ng ti???n ???? nh???p '
from thoadonnhap join tchitiethdn on thoadonnhap.SoHDN= tchitiethdn.SoHDN
join tsach on tchitiethdn.MaSach = tsach.MaSach
where year(Ngaynhap)=  2014;

-- 46. ?????i t??n "NXB Th??ng Long" th??nh "NXB V??n h???c
update tnhaxuatban
set TenNXB = 'NXB v??n h???c'
where TenNXB = 'NXB Th??ng Long'