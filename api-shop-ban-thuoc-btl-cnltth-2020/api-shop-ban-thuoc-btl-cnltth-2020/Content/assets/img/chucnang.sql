alter proc TimKiemSachByMaSach @maSach char(10)
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and DAUSACH.MaSach like @maSach 
go
alter proc TimKiemSachByTacGia @tacGia char(10)
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and TACGIA.TenTacGia like @tacGia
go
alter proc TimKiemSachByTheLoai @theLoai char(10)
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and THELOAI.TenTheLoai like @theLoai
go

alter proc TimKiemSachByTenSach @tenSach char(10)
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and DAUSACH.TenSach like @tenSach
go
alter proc TimKiemSachByTNhaXuatBan @tenNhaXuatBan char(10)
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and NHAXUATBAN.TenNhaXuatBan like @tenNhaXuatBan
go

alter proc TimKiemSach(@maSach char(10),@tenTacGia nvarchar(50),@tenTheLoai nvarchar(50),@tenSach nvarchar(50),@tenNhaXuatBan nvarchar(50))
as 
if @maSach <>' '
	exec TimKiemSachByMaSach @maSach
else if @tenTacGia <> ' '
	exec TimKiemSachByMaSach @tenTacGia
else if @tenTheLoai <> ' '
	exec TimKiemSachByTheLoai @tenTheLoai
else if @tenSach <> ' '
	exec TimKiemSachByTenSach @tenSach
else if @tenNhaXuatBan<>' '
	exec TimKiemSachByTNhaXuatBan @tenNhaXuatBan
go
--select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

--from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
--where 
	
--	 TACGIA.MaTacGia =DAUSACH.MaTacGia
--	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
--	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
--	and SACH.MaSach=DAUSACH.MaSach
--	and DAUSACH.MaSach like @maSach 
--	and TACGIA.MaTacGia like @tacGia
--	and THELOAI.TenTheLoai like @theLoai
--	and DAUSACH.TenSach like @tenSach
--	and NHAXUATBAN.TenNhaXuatBan like @nhaXuatBan
go
exec TimKiemSach @maSach='S00001         ', @tenTacGia=" ",@tenTheLoai =" ",@tenSach="Giáo trình Giải tích 1",@tenNhaXuatBan=" "
go
alter proc TimKiemSachByMaSach @maSach char(10)
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and DAUSACH.MaSach like @maSach 


go
create proc Dky(@maSV char(15),@passWord nvarchar(50))
as
IF  EXISTS ( SELECT 1 FROM SINHVIEN WHERE MaSinhVien like @maSV )
BEGIN
	IF not  EXISTS ( SELECT 1 FROM UserDky WHERE MaSinhVien like @maSV )
	begin
		INSERT INTO UserDky(maSinhVien, passWord) VALUES (@maSV, @passWord)
	end
END

exec Dky @maSV='SV00001        ',@passWord='1234'
go
alter proc CapNhat @maSinhVien char(15), @hoten nvarchar(50),@ngaySinh nvarchar(50),@diaChi nvarchar(50),@sdt nvarchar(50)
as
update SINHVIEN set HoTen=@hoten,NgaySinh=@ngaySinh,@diaChi=@diaChi,SoDienThoai=@sdt
where MaSinhVien=@maSinhVien
exec CapNhat   @maSinhVien='SV00001        ' ,@hoten =N'Nguyễn Quang Linh',@ngaySinh =N'4/9/1999',@diaChi =N'Nam Định',@sdt ='0919040423'
go
alter proc TimKiemTrangThaiSachByTenSach @tenSach nvarchar(50),@trangThai bit
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,SACH.TrangThai 

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH 
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and DAUSACH.TenSach like @tenSach
	and TrangThai=@trangThai
go
exec TimKiemTrangThaiSachByTenSach  @tenSach=N'Giáo trình Giải tích 1',@trangThai='1'
go
create proc LichSuMuon 
as
select DAUSACH.MaSach,DAUSACH.TenSach,THELOAI.TenTheLoai,NHAXUATBAN.TenNhaXuatBan,MUONTRA.NgayMuon,MUONTRA.NgayTra

from DAUSACH,THELOAI,TACGIA,NHAXUATBAN,SACH,CHITIETMUONTRA,MUONTRA
where 
	
	 TACGIA.MaTacGia =DAUSACH.MaTacGia
	and DAUSACH.MaNhaXuatBan=NHAXUATBAN.MaNhaXuatBan
	and THELOAI.MaTheLoai=DAUSACH.MaTheLoai
	and SACH.MaSach=DAUSACH.MaSach
	and CHITIETMUONTRA.MaMuonTra=MUONTRA.MaMuonTra
	and CHITIETMUONTRA.MaDonViSach=SACH.MaDonViSach
	
go
exec LichSuMuon
go
create proc ThongTinNguoiDung 
as select HoTen,NgaySinh,Gioitinh,DiaChi,SoDienThoai from SINHVIEN,UserDky where SINHVIEN.MaSinhVien=UserDky.maSinhVien
go
exec ThongTinNguoiDung
