create database WebBanThuoc
go
USE [SHOPBANTHUOCAPI2020]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[ID_CT] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaSP] [char](15) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](255) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[MaKH] [int] NULL,
	[SDT] [char](20) NULL,
	[HoTen] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[Diachi] [nvarchar](255) NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[SDT] [nchar](20) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[MatKhau] [char](100) NOT NULL,
	[Diachi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLES](
	[IDRole] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ROLES] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [char](15) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[ThanhPhan] [nvarchar](100) NULL,
	[CongDung] [nvarchar](100) NULL,
	[LieuLuong] [nvarchar](255) NULL,
	[GiaBan] [int] NULL,
	[MaDM] [int] NULL,
	[DonVi] [nvarchar](100) NOT NULL,
	[DangThuoc] [nvarchar](100) NOT NULL,
	[HinhAnh] [nchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOANQUANTRI]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANQUANTRI](
	[MaQT] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[SDT] [nchar](20) NOT NULL,
	[MatKhau] [nchar](100) NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK__QUANTRI__2725F85A1C938C35] PRIMARY KEY CLUSTERED 
(
	[MaQT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRANGTHAIDONHANG]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAIDONHANG](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[VIEWCHITIET]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEWCHITIET] AS
SELECT DH.MaDH, DH.MaKH, CT.MaSP, SP.TenSP, SP.HinhAnh, CT.SoLuong, CT.DonGia, CT.ThanhTien 
FROM dbo.CHITIETDONHANG CT, dbo.DONHANG DH, dbo.SANPHAM SP
WHERE CT.MaDH =DH.MaDH AND CT.MaSP = SP.MaSP


GO
/****** Object:  View [dbo].[VIEWDONHANG]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEWDONHANG]
AS
SELECT DH.MaDH, DH.NgayLap, DH.MaKH, DH.HoTen, DH.SDT, DH.Email, DH.Diachi, DH.TongTien, TT.MaTT, TT.TenTT, TT.GhiChu
FROM     dbo.DONHANG AS DH INNER JOIN
                  dbo.TRANGTHAIDONHANG AS TT ON TT.MaTT = DH.TrangThai


GO
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] ON 

INSERT [dbo].[CHITIETDONHANG] ([ID_CT], [MaDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (9, 5, N'7              ', 10, 50000, 500000)
INSERT [dbo].[CHITIETDONHANG] ([ID_CT], [MaDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (10, 6, N'5              ', 10, 22000, 220000)
INSERT [dbo].[CHITIETDONHANG] ([ID_CT], [MaDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (11, 7, N'3              ', 20, 9000, 180000)
INSERT [dbo].[CHITIETDONHANG] ([ID_CT], [MaDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (12, 8, N'4              ', 20, 22000, 440000)
INSERT [dbo].[CHITIETDONHANG] ([ID_CT], [MaDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (13, 9, N'1              ', 1, 40000, 40000)
INSERT [dbo].[CHITIETDONHANG] ([ID_CT], [MaDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (14, 10, N'1              ', 2, 40000, 80000)
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] OFF
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (1, N'THUỐC ĐÔNG Y', N'')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (2, N'THỰC PHẨM CHỨC NĂNG', N'')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (4, N'SẢN PHẨM KHỬ KHUẨN', N'')
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (6, N'DỤNG CỤ Y TẾ', NULL)
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (7, N'THUỐC GÂY TÊ', NULL)
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (8, N'THUỐC GIẢM ĐAU', NULL)
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (9, N'THUỐC HẠ SỐT', NULL)
INSERT [dbo].[DANHMUC] ([MaDM], [TenDM], [GhiChu]) VALUES (10, N'THUỐC CHỐNG DỊ ỨNG', NULL)
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDH], [NgayLap], [MaKH], [SDT], [HoTen], [Email], [Diachi], [TongTien], [GhiChu], [TrangThai]) VALUES (5, CAST(N'2020-12-20' AS Date), 4, N'0919040423          ', N'nguyễn quang linh', N'linh@123gmail.com', N'69 dương khuê ', 500000, NULL, 5)
INSERT [dbo].[DONHANG] ([MaDH], [NgayLap], [MaKH], [SDT], [HoTen], [Email], [Diachi], [TongTien], [GhiChu], [TrangThai]) VALUES (6, CAST(N'2020-12-25' AS Date), 4, N'0919040423          ', N'nguyễn quang linh', N'linh@123gmail.com', N'69 dương khuê ', 220000, NULL, 4)
INSERT [dbo].[DONHANG] ([MaDH], [NgayLap], [MaKH], [SDT], [HoTen], [Email], [Diachi], [TongTien], [GhiChu], [TrangThai]) VALUES (7, CAST(N'2020-12-20' AS Date), 5, N'0123456789          ', N'Lê duy đạt', N'dat@321gmail.com', N'210 hoàng quốc việt', 180000, NULL, 3)
INSERT [dbo].[DONHANG] ([MaDH], [NgayLap], [MaKH], [SDT], [HoTen], [Email], [Diachi], [TongTien], [GhiChu], [TrangThai]) VALUES (8, CAST(N'2020-12-25' AS Date), 5, N'0123456789          ', N'Lê duy đạt', NULL, N'210 hoàng quốc việt', 440000, NULL, 2)
INSERT [dbo].[DONHANG] ([MaDH], [NgayLap], [MaKH], [SDT], [HoTen], [Email], [Diachi], [TongTien], [GhiChu], [TrangThai]) VALUES (9, CAST(N'2020-12-27' AS Date), 4, N'0919040423          ', N'Nguyễn Quang Linh', N'linh@123gmail.com', N'69 dương khuê', 40000, NULL, 1)
INSERT [dbo].[DONHANG] ([MaDH], [NgayLap], [MaKH], [SDT], [HoTen], [Email], [Diachi], [TongTien], [GhiChu], [TrangThai]) VALUES (10, CAST(N'2020-12-27' AS Date), 5, N'0123456789          ', N'Lê duy đạt', N'dat@321gmail.com', N'210 hoàng quốc việt', 80000, NULL, 1)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [SDT], [HoTen], [Email], [MatKhau], [Diachi]) VALUES (4, N'0919040423          ', N'Nguyễn Quang Linh', N'linh@123gmail.com', N'12345678                                                                                            ', N'69 dương khuê')
INSERT [dbo].[KHACHHANG] ([MaKH], [SDT], [HoTen], [Email], [MatKhau], [Diachi]) VALUES (5, N'0123456789          ', N'Lê duy đạt', N'dat@321gmail.com', N'87654321                                                                                            ', N'210 hoàng quốc việt')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
INSERT [dbo].[ROLES] ([IDRole], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[ROLES] ([IDRole], [RoleName]) VALUES (2, N'Member')
INSERT [dbo].[ROLES] ([IDRole], [RoleName]) VALUES (3, N'dev')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'1              ', N'Geo Rửa Tay', N'Ethanol, Nước tinh khiết, Benzalkonium Chloride', N'Diệt Khuẩn, Khử trùng', N'Luôn sử dụng', 40000, 4, N'Chai 200ml', N'geo lỏng', N'geo-rua-tay.jpg                                                                                                                                                                                                                                                ', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'2              ', N'Nước muối Vĩnh Phúc', N'NaCl, Nước tinh khiết, Benzalkonium Chloride', N'Diệt Khuẩ, Khử trùng', N'Luôn sử dụng', 22000, 4, N'Chai 200ml', N'geo', N'nuoc-muoi.jpg                                                                                                                                                                                                                                                  ', N'Phòng ngừa Đại dịch COVID 19, Bộ Y Tế khuyến cáo người dân rửa tay thường xuyên')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'3              ', N'Cồn 90 độ', N'Ethanol, Nước tinh khiết', N'Diệt Khuẩ, Khử trùng', N'Khuyến cáo', 9000, 4, N'Chai 200ml', N'Chai dung dịch', N'con-90.jpg                                                                                                                                                                                                                                                     ', N'Dung dịch Cồn 90 độ hay còn được gọi là cồn y tế có tác dụng diệt vi khuẩn, siêu vi khuẩn và các loại nấm. Trong y tế, các loại cồn sát trùng này thường được dùng để: sát trùng dụng cụ y tế, sát trùng phần mô trước khi tiêm, phẫu thuật…')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'4              ', N'Oxi Già', N'oxy già đậm đặc 6,03g, Acid benzoic, Ethanol 96%.', N'Diệt Khuẩ, Khử trùng', N'Luôn sử dụng', 22000, 4, N'Chai 200ml', N'Chai dung dịch', N'oxi-gia.jpg                                                                                                                                                                                                                                                    ', N'Dung dịch Oxy Già 3% còn có tên là Hydrogen Peroxide. Oxy già là dung dịch trong suốt có tác dụng khử trùng, sát khuẩn rất thông dụng trong y tế. ')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'5              ', N'Nước muối 5', N'NaCl, Nước tinh khiết, Benzalkonium Chloride', N'Diệt Khuẩ, Khử trùng', N'Tùy chọn', 22000, 1, N'Chai 750ml', N'dung dịch lỏng', N'khu-khuan-be-mat.jpg                                                                                                                                                                                                                                           ', N'ALFASEPT SURFACE-RTU là dung dịch sát khuẩn được sử dụng để khử khuẩn nhanh các bề mặt, lau làm sạch các dụng cụ đồ dùng thường ngày.

An toàn, dễ sử dụng, phòng tránh nguy cơ lây nhiễm.

Phổ diệt khuẩn rộng bao gồm các loại vi khuẩn, nấm')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'6              ', N'ALFASEPT SURFACE-RTU', N'Didecyl dimethyl ammonium chloride, Poly, Ethanol', N'Khử khuẩn nhanh các bề mặt', N'', 99000, 4, N'Chai 750ml', N'Chai dung dịch', N'khu-khuan-be-mat.jpg                                                                                                                                                                                                                                           ', N'ALFASEPT SURFACE-RTU là dung dịch sát khuẩn được sử dụng để khử khuẩn nhanh các bề mặt, lau làm sạch các dụng cụ đồ dùng thường ngày.

An toàn, dễ sử dụng, phòng tránh nguy cơ lây nhiễm.

Phổ diệt khuẩn rộng bao gồm các loại vi khuẩn, nấm.')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [ThanhPhan], [CongDung], [LieuLuong], [GiaBan], [MaDM], [DonVi], [DangThuoc], [HinhAnh], [MoTa]) VALUES (N'7              ', N'Panadol', N'Ethannol', N'Giảm đau đầu', N'Bác sĩ kê đơn', 50000, 8, N'vỉ 10 viên', N'viên nén', N'panadol.jpg                                                                                                                                                                                                                                                    ', N'Dùng theo chỉ định của bác sĩ')
SET IDENTITY_INSERT [dbo].[TAIKHOANQUANTRI] ON 

INSERT [dbo].[TAIKHOANQUANTRI] ([MaQT], [HoTen], [SDT], [MatKhau], [Role]) VALUES (7, N'Nguyễn Quang Linh', N'0919040423          ', N'12345678                                                                                            ', 1)
INSERT [dbo].[TAIKHOANQUANTRI] ([MaQT], [HoTen], [SDT], [MatKhau], [Role]) VALUES (8, N'Lê Duy Đạt', N'1234567890          ', N'87654321                                                                                            ', 2)
SET IDENTITY_INSERT [dbo].[TAIKHOANQUANTRI] OFF
SET IDENTITY_INSERT [dbo].[TRANGTHAIDONHANG] ON 

INSERT [dbo].[TRANGTHAIDONHANG] ([MaTT], [TenTT], [GhiChu]) VALUES (1, N'Chưa xác nhận', N'Chưa xác nhận')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTT], [TenTT], [GhiChu]) VALUES (2, N'Đã xác nhận', NULL)
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTT], [TenTT], [GhiChu]) VALUES (3, N'Đang đóng gói', NULL)
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTT], [TenTT], [GhiChu]) VALUES (4, N'Đang vận chuyển', NULL)
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTT], [TenTT], [GhiChu]) VALUES (5, N'Hoàn thành', NULL)
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTT], [TenTT], [GhiChu]) VALUES (6, N'Đã hủy', NULL)
SET IDENTITY_INSERT [dbo].[TRANGTHAIDONHANG] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__QUANTRI__CA1930A5B69A7E59]    Script Date: 12/27/2020 2:58:30 AM ******/
ALTER TABLE [dbo].[TAIKHOANQUANTRI] ADD  CONSTRAINT [UQ__QUANTRI__CA1930A5B69A7E59] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TRANGTHAIDONHANG] ([MaTT])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUC] ([MaDM])
GO
ALTER TABLE [dbo].[TAIKHOANQUANTRI]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOANQUANTRI_ROLES] FOREIGN KEY([Role])
REFERENCES [dbo].[ROLES] ([IDRole])
GO
ALTER TABLE [dbo].[TAIKHOANQUANTRI] CHECK CONSTRAINT [FK_TAIKHOANQUANTRI_ROLES]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSANPHAM]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteSANPHAM]
@id INT
AS
BEGIN
DELETE FROM SANPHAM
WHERE MaSP= @id ;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertSANPHAM]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSANPHAM]
@MaSP INT,
@TenSP nvarchar(100),
@ThanhPhan nvarchar(100),
@CongDung nvarchar(100),
@LieuLuong nvarchar(255),
@DonVi nvarchar(100),
@DangThuoc nvarchar(100),
@HinhAnh nchar(255),
@MoTa nvarchar(255),
@GiaBan INT,
@MaDM int

AS
BEGIN
INSERT INTO SANPHAM(MaSP,TenSP,ThanhPhan,CongDung,LieuLuong,DonVi,GiaBan,DangThuoc,HinhAnh,MoTa,MaDM) 
VALUES ( @MaSP, @TenSP,@ThanhPhan,@CongDung,@LieuLuong,@DonVi,@GiaBan,@DangThuoc,@HinhAnh,@MoTa,@MaDM);
END
----------------------

GO
/****** Object:  StoredProcedure [dbo].[UpdateSANPHAM]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateSANPHAM]
@id INT,
@TenSP nvarchar(100),
@ThanhPhan nvarchar(100),
@CongDung nvarchar(100),
@LieuLuong nvarchar(255),
@DonVi nvarchar(100),
@DangThuoc nvarchar(100),
@HinhAnh nchar(255),
@MoTa nvarchar(255),
@GiaBan INT
AS
BEGIN
UPDATE SANPHAM SET TenSP=@TenSP,ThanhPhan=@ThanhPhan,CongDung=@CongDung,LieuLuong=@LieuLuong,
DonVi=@DonVi,DangThuoc=@DangThuoc,HinhAnh=@HinhAnh,MoTa=@MoTa,GiaBan=@GiaBan
WHERE MaSP = @id ;
END
----------------------

GO
/****** Object:  StoredProcedure [dbo].[updateTKQT]    Script Date: 12/27/2020 2:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateTKQT]
	@maQT int,
	@role int
as
begin
	delete USEinROLES where MaQT=@maQT
	insert into USEinROLES 
	values (@maQT,@role)
end

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DH"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TT"
            Begin Extent = 
               Top = 175
               Left = 48
               Bottom = 316
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1572
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEWDONHANG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEWDONHANG'
GO
