/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     12/21/2016 9:37:50 PM                        */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('TBLDICHVU')
            and   type = 'U')
   drop table TBLDICHVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLHOADON')
            and   name  = 'LAPHD_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLHOADON.LAPHD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLHOADON')
            and   name  = 'TINHTIEN_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLHOADON.TINHTIEN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLHOADON')
            and   type = 'U')
   drop table TBLHOADON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLKHACHHANG')
            and   type = 'U')
   drop table TBLKHACHHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLLOAIPHONG')
            and   type = 'U')
   drop table TBLLOAIPHONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLNHANVIEN')
            and   type = 'U')
   drop table TBLNHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLPHONG')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLPHONG.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLPHONG')
            and   type = 'U')
   drop table TBLPHONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLP_DANGKY')
            and   name  = 'LAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLP_DANGKY.LAP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLP_DANGKY')
            and   name  = '_ANG_KI_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLP_DANGKY._ANG_KI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLP_DANGKY')
            and   name  = '_AT_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLP_DANGKY._AT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLP_DANGKY')
            and   type = 'U')
   drop table TBLP_DANGKY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLSDDICHVU')
            and   name  = 'SDDICHVU2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLSDDICHVU.SDDICHVU2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLSDDICHVU')
            and   name  = 'SDDICHVU_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLSDDICHVU.SDDICHVU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLSDDICHVU')
            and   type = 'U')
   drop table TBLSDDICHVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLTAIKHOANDANGNHAP')
            and   name  = 'CUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLTAIKHOANDANGNHAP.CUA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLTAIKHOANDANGNHAP')
            and   type = 'U')
   drop table TBLTAIKHOANDANGNHAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLTHUEPHONG')
            and   name  = 'THONGTIN_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLTHUEPHONG.THONGTIN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLTHUEPHONG')
            and   type = 'U')
   drop table TBLTHUEPHONG
go

/*==============================================================*/
/* Table: TBLDICHVU                                             */
/*==============================================================*/
create table TBLDICHVU (
   MADV                 nvarchar(20)          not null,
   TENDV                nvarchar(40)          null,
   GIADV                money                null,
   DVT                  nvarchar(20)          null,
   constraint PK_TBLDICHVU primary key nonclustered (MADV)
)
go

/*==============================================================*/
/* Table: TBLHOADON                                             */
/*==============================================================*/
create table TBLHOADON (
   MAHD                 varchar(20) primary key not null,
   MATP                 varchar(20),
   MANV					varchar(20),
   NGAYHD               datetime,
   TONGTIEN             money
)
go

/*==============================================================*/
/* Index: TINHTIEN_FK                                           */
/*==============================================================*/
create index TINHTIEN_FK on TBLHOADON (
MATP ASC
)
go

/*==============================================================*/
/* Index: LAPHD_FK                                              */
/*==============================================================*/
create index LAPHD_FK on TBLHOADON (
MANV ASC
)
go

/*==============================================================*/
/* Table: TBLKHACHHANG                                          */
/*==============================================================*/
create table TBLKHACHHANG (
   MAKH                 nvarchar(20)          not null,
   TENKH                nvarchar(40)          null,
   NGSINHKH             datetime             null,
   SODTKH               nvarchar(20)          null,
   QUOCTICHKH           nvarchar(40)          null,
   DIACHIKH             nvarchar(50)          null,
   constraint PK_TBLKHACHHANG primary key nonclustered (MAKH)
)
go

/*==============================================================*/
/* Table: TBLLOAIPHONG                                          */
/*==============================================================*/
create table TBLLOAIPHONG (
   MALP                 nvarchar(20)          not null,
   LOAIPHONG            nvarchar(50)          null,
   SOGIUONG             int                  null,
   DONGIA               money                null,
   GHICHU               nvarchar(50)          null,
   constraint PK_TBLLOAIPHONG primary key nonclustered (MALP)
)
go

/*==============================================================*/
/* Table: TBLNHANVIEN                                           */
/*==============================================================*/
create table TBLNHANVIEN (
   MANV                 nvarchar(20)          not null,
   TENNV                nvarchar(40)          null,
   NGVL                 datetime             null,
   DIACHINV             nvarchar(50)          null,
   NGSINHNV             datetime             null,
   SDTNV                nvarchar(20)          null,
   EMAIL_NV				varchar(50)				null,	
   constraint PK_TBLNHANVIEN primary key nonclustered (MANV)
)
go

/*==============================================================*/
/* Table: TBLPHONG                                              */
/*==============================================================*/
create table TBLPHONG (
   MAPHONG              nvarchar(20)          not null,
   MALP                 nvarchar(20)          not null,
   TENPHONG             nvarchar(40)          null,
   TINHTRANG            nvarchar(50)          null,
   constraint PK_TBLPHONG primary key nonclustered (MAPHONG)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on TBLPHONG (
MALP ASC
)
go

/*==============================================================*/
/* Table: TBLP_DANGKY                                           */
/*==============================================================*/
create table TBLP_DANGKY (
   MADK                 nvarchar(20)          not null,
   MANV                 nvarchar(20)          not null,
   MAPHONG              nvarchar(20)          not null,
   MAKH                 nvarchar(20)          not null,
   NGAYDK               datetime             null,
   NGAYDEN              datetime             null,
   SONGUOI              int                  null,
   constraint PK_TBLP_DANGKY primary key nonclustered (MADK)
)
go

/*==============================================================*/
/* Index: _AT_FK                                                */
/*==============================================================*/
create index _AT_FK on TBLP_DANGKY (
MAKH ASC
)
go

/*==============================================================*/
/* Index: _ANG_KI_FK                                            */
/*==============================================================*/
create index _ANG_KI_FK on TBLP_DANGKY (
MAPHONG ASC
)
go

/*==============================================================*/
/* Index: LAP_FK                                                */
/*==============================================================*/
create index LAP_FK on TBLP_DANGKY (
MANV ASC
)
go

/*==============================================================*/
/* Table: TBLSDDICHVU                                           */
/*==============================================================*/
create table TBLSDDICHVU (
   MASD                 varchar(20) primary key not null,
   MADV                 varchar(20),
   MANV                 varchar(20),
   MATP                 varchar(20),
   NGAYSD               datetime,
   SOLUONG              int,
   TIENSD               money
)

/*==============================================================*/
/* Index: SDDICHVU_FK                                           */
/*==============================================================*/
create index SDDICHVU_FK on TBLSDDICHVU (
MADV ASC
)
go

/*==============================================================*/
/* Index: SDDICHVU2_FK                                          */
/*==============================================================*/
create index SDDICHVU2_FK on TBLSDDICHVU (
MATP ASC
)
go

/*==============================================================*/
/* Table: TBLTAIKHOANDANGNHAP                                   */
/*==============================================================*/
create table TBLTAIKHOANDANGNHAP (
   MATK                 nvarchar(20)          not null,
   MANV                 nvarchar(20)          not null,
   LOAITK               nvarchar(50)          null,
   PASSWORD             nvarchar(50)          null,
   NGTAO                datetime             null,
   USER_DK               nvarchar(50)          null,
   constraint PK_TBLTAIKHOANDANGNHAP primary key nonclustered (MATK)
)
go


UPDATE TBLTAIKHOANDANGNHAP
SET USER_DK = 'admin1'
where MATK = 'TK02'
/*==============================================================*/
/* Index: CUA_FK                                                */
/*==============================================================*/
create index CUA_FK on TBLTAIKHOANDANGNHAP (
MANV ASC
)
go

/*==============================================================*/
/* Table: TBLTHUEPHONG                                          */
/*==============================================================*/
create table TBLTHUEPHONG (
   MATP                 nvarchar(20)          not null,
   MAPHONG              nvarchar(20)          not null,
   NGAYTHUE             datetime             null,
   NGAYTRA              datetime             null,
   MAKH					nvarchar(20)		null,
   constraint PK_TBLTHUEPHONG primary key nonclustered (MATP)
)
go

/*==============================================================*/
/* Index: THONGTIN_FK                                           */
/*==============================================================*/
create index THONGTIN_FK on TBLTHUEPHONG (
MAPHONG ASC
)
go
ALTER TABLE TBLTHUEPHONG ADD CONSTRAINT FK_TP_KH FOREIGN KEY(MAKH) REFERENCES KHACHHANG(MAKH)
set dateformat dmy  
INSERT INTO dbo.TBLDICHVU VALUES ('DV01',N'Giặt đồ','20000','vnd')
INSERT INTO dbo.TBLDICHVU VALUES ('DV02',N'Dọn Phòng','50000','vnd')
INSERT INTO dbo.TBLDICHVU VALUES ('DV03',N'Giữ Xe','10000','vnd')
INSERT INTO dbo.TBLDICHVU VALUES ('DV04',N'Giao nước','30000','vnd')
INSERT INTO dbo.TBLDICHVU VALUES ('DV05',N'Chuyển hành lý','20000','vnd')
delete from TBLKHACHHANG

set dateformat dmy
INSERT INTO dbo.TBLKHACHHANG VALUES ('KH01',N'Hồ Quang Cảnh','1/2/1996','01636595566',N'Việt Nam',N'Quang Nam')
INSERT INTO dbo.TBLKHACHHANG VALUES ('KH02',N'Nguyen Duc Thinh','1/12/1996','0166556688',N'Việt Nam',N'Dong Nai')
INSERT INTO dbo.TBLKHACHHANG VALUES ('KH03',N'Duc Thinh Nguyen','1/11/1996','01628856688',N'Laos',N'Xvannakhet')
INSERT INTO dbo.TBLKHACHHANG VALUES ('KH04',N'Nguyen Duc Dung','1/12/1996','66556688',N'USA',N'Long An')
INSERT INTO dbo.TBLKHACHHANG VALUES ('KH05',N'Nguyen Thinh Hiep','1/1/1996','01556688',N'Campuchia',N'Dong Nai')

INSERT INTO dbo.TBLLOAIPHONG VALUES ('LP01',N'Thường','2','200000',N'sạch sẽ')
INSERT INTO dbo.TBLLOAIPHONG VALUES ('LP02',N'Vip','2','500000',N'máy lạnh')
INSERT INTO dbo.TBLLOAIPHONG VALUES ('LP03',N'Cao cap','4','2000000',N'đầy đủ')
INSERT INTO dbo.TBLLOAIPHONG VALUES ('LP04',N'bình dân','2','100000',N'quạt')
INSERT INTO dbo.TBLLOAIPHONG VALUES ('LP05',N'Cần sửa chữa','0','0',N'Cần thay thiết bị')

INSERT INTO dbo.TBLNHANVIEN VALUES ('NV01',N'Hoàng Văn An','1/1/2016',N'Quảng Bình','1/1/1996','01634053773')
INSERT INTO dbo.TBLNHANVIEN VALUES ('NV02',N'Nguyễn Tuấn Anh','1/2/2016',N'Bình Dương','2/1/1996','01634453773')


INSERT INTO dbo.TBLTAIKHOANDANGNHAP VALUES('TK01','NV01',N'Tiếp Tân','tieptan1','123456','21/12/2016')
INSERT INTO dbo.TBLTAIKHOANDANGNHAP VALUES('TK02','NV02',N'Admin','admin1','654321','21/12/2016')
set dateformat dmy
INSERT INTO dbo.TBLTAIKHOANDANGNHAP VALUES('TK04','NV02',N'Admin','321','21/12/2016 21:27:00.000','admin2')
set dateformat dmy
insert into TBLHOADON values('HD01','NV01','TP02','22/12/2016',660000)

INSERT INTO dbo.TBLHOADON VALUES ('TP09','HD01',NULL,'500000')
INSERT INTO dbo.TBLHOADON VALUES ('TP02','NV01','HD03',NULL,'1000000')
INSERT INTO dbo.TBLHOADON VALUES ('TP09','NV01','HD01',NULL,'55555','AAAAAA')
INSERT INTO dbo.TBLHOADON VALUES ('TP01','NV01','HD01','5/6/2016','555555','AAAAAA')


select * 
from TBLLOAIPHONG
where LOAIPHONG = N'vip'

select *
from TBLHOADON
where month(NGAYHD) = 6 

delete from TBLHOADON where mahd ='NV01'

-----Stored procedure

--------------------------------------------------------------------------------------------------
--Long

--xoa loai phong
GO
CREATE PROC XOALOAIPHONG @MALOAIPHONG VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS (SELECT * FROM TBLLOAIPHONG WHERE MALP = @MALOAIPHONG))
	BEGIN
		PRINT N'Không tồn tại loại phòng cần xóa'
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLPHONG WHERE MALP = @MALOAIPHONG))
		BEGIN
			PRINT N'Không thể xóa loại phòng này'
			RETURN
		END
		ELSE
		BEGIN
			DELETE FROM TBLLOAIPHONG WHERE MALP = @MALOAIPHONG
			PRINT N'Đã xóa loại phòng'
		END
	END		
END
GO 
--them tai khoan
CREATE PROC THEMTAIKHOAN @MATK VARCHAR(20),@ACC VARCHAR(20),@PASS VARCHAR(20),@LOAITK NVARCHAR(40),@NGAYLAP DATETIME,@GHICHU NVARCHAR(50)
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLTAIKHOAN WHERE MATK = @MATK))
	BEGIN
		PRINT N'Mã tài khoản đã tồn tại'
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLTAIKHOAN WHERE TENDANGNHAP = @ACC))
		BEGIN
			PRINT N'Tên đăng nhập đã tồn tại'
			RETURN
		END
		ELSE
		BEGIN
			INSERT INTO TBLTAIKHOAN(MATK,TENDANGNHAP,MATKHAU,LOAITK,NGAYLAP,GHICHU) VALUES(
			@MATK,@ACC,@PASS,@LOAITK,@NGAYLAP,@GHICHU)
			
		END
	END
END
GO
--dang nhap
CREATE PROC DANGNHAP @TK VARCHAR(20), @MK VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTAIKHOAN WHERE TENDANGNHAP = @TK))
	BEGIN
		PRINT N'Tên đăng nhập không tồn tại'
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLTAIKHOAN WHERE TENDANGNHAP = @TK AND MATKHAU = @MK))
		BEGIN
			PRINT N'Bạn đã đăng nhập thành công'
		END
		ELSE
		BEGIN
			PRINT N'Tên đăng nhập hoặc mật khẩu không đúng'
			RETURN
		END
	END
END
GO
--doi pass
CREATE PROC DOIMATKHAU @TK VARCHAR(20), @MK VARCHAR(20), @NEWPASS VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTAIKHOAN WHERE TENDANGNHAP = @TK))
	BEGIN
		PRINT N'Tên đăng nhập không tồn tại'
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLTAIKHOAN WHERE TENDANGNHAP = @TK AND MATKHAU = @MK))
		BEGIN
			UPDATE TBLTAIKHOAN SET MATKHAU = @NEWPASS WHERE TENDANGNHAP = @TK
			PRINT N'Bạn đã đổi mật khẩu thành công'
		END
		ELSE
		BEGIN
			PRINT N'Tên đăng nhập hoặc mật khẩu không đúng'
			RETURN
		END
	END
END
GO
--xoa tai khoan
CREATE PROC XOATAIKHOAN @MATK VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTAIKHOAN WHERE MATK = @MATK))
	BEGIN
		PRINT N'Tài khoản không tồn tại'
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLNHANVIEN WHERE MATK = @MATK))
		BEGIN
			PRINT N'Tài khoản này đang thuộc về một nhân viên, không thể xóa'
			RETURN
		END
		ELSE
		BEGIN
			DELETE FROM TBLTAIKHOAN WHERE MATK = @MATK
			PRINT N'Tài khoản đã được xóa'
		END
	END
END
GO
--tinh tien phong
CREATE PROC TINHTIENPHONG @MAHD VARCHAR(20), @MAPHONG VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTHUEPHONG WHERE MAPHONG = @MAPHONG))
	BEGIN
		PRINT N'Phòng này chưa được thuê nên không thể tính tiền'
		RETURN
	END
	ELSE
	BEGIN
		DECLARE @TONGTIEN MONEY
		DECLARE @TIENTHUE MONEY
		DECLARE @TIENDV MONEY
		DECLARE @SONGAY INT
		DECLARE @MATHUE VARCHAR(20)
		--XET XEM PHONG CO SU DUNG DICH VU KHONG
		IF(EXISTS(SELECT * FROM TBLSDDICHVU SD,TBLTHUEPHONG TP, TBLPHONG P 
				  WHERE SD.MATP = TP.MATP AND TP.MAPHONG = P.MAPHONG AND P.MAPHONG = @MAPHONG))
		BEGIN
			SET @TIENDV = (SELECT SUM(SOLUONG*DV.GIADV)
						   FROM TBLSDDICHVU SD,TBLTHUEPHONG TP, TBLPHONG P, TBLDICHVU DV 
						   WHERE SD.MADV = DV.MADV AND SD.MATP = TP.MATP AND TP.MAPHONG = P.MAPHONG AND P.MAPHONG = @MAPHONG)
		END
		ELSE
		BEGIN
			SET @TIENDV = 0
		END
		--TINH TIEN THUE
		SET @SONGAY =	(SELECT DATEDIFF(DAY,NGAYTRA,NGAYTHUE)
						 FROM TBLPHONG P, TBLTHUEPHONG TP
						 WHERE P.MAPHONG = TP.MAPHONG AND P.MAPHONG = @MAPHONG)
		IF(@SONGAY>0)
		BEGIN				 
			SET @TIENTHUE = (SELECT DONGIA*@SONGAY
							 FROM TBLPHONG P, TBLLOAIPHONG LP, TBLTHUEPHONG TP
							 WHERE LP.MALP = P.MALP AND P.MAPHONG = TP.MAPHONG AND P.MAPHONG = @MAPHONG)
		END
		ELSE
		BEGIN
			SET @TIENTHUE = (SELECT DONGIA
							 FROM TBLPHONG P, TBLLOAIPHONG LP, TBLTHUEPHONG TP
							 WHERE LP.MALP = P.MALP AND P.MAPHONG = TP.MAPHONG AND P.MAPHONG = @MAPHONG)
		END
		--LUU HOA DON
		SET @TONGTIEN = @TIENTHUE+@TIENDV
		SET @MATHUE = (SELECT MATP FROM TBLTHUEPHONG WHERE MAPHONG = @MAPHONG)
		INSERT INTO TBLHOADON(MAHD,MATP,NGAYHD,TONGTIEN) VALUES(@MAHD,@MATHUE,GETDATE(),@TONGTIEN)
		--XOA KHOI TABLE THUE PHONG
		DELETE FROM TBLTHUEPHONG WHERE MAPHONG = @MAPHONG
		--CAP NHAT TINH TRANG PHONG
		UPDATE TBLPHONG SET TINHTRANG = N'Còn' WHERE MAPHONG = @MAPHONG				 		   
	END 
END


----------------------------------------------------------------------------------------------------
--Hiep

--lấy thông tin của bảng, bảng là biến truyền vào
create proc ThongTinBang(@tenbang varchar(20))
as
begin
exec ('select * from ' + @tenbang)
end
--chay: exec ThongTinBang 'TBLKHACHHANG'


create table bang_ma(
tenbang varchar(20),
ma varchar(10)
)
insert into bang_ma values ('TBLDICHVU','MADV')
insert into bang_ma values ('TBLHOADON','MAHD')
insert into bang_ma values ('TBLKHACHHANG','MAKH')
insert into bang_ma values ('TBLLOAIPHONG','MALP')
insert into bang_ma values ('TBLNHANVIEN','MANV')
insert into bang_ma values ('TBLP_DANGKI','MADK')
insert into bang_ma values ('TBLPHONG','MAPHONG')
insert into bang_ma values ('TBLSDDICHVU','MASD')
insert into bang_ma values ('TBLTAIKHOA','MATK')
insert into bang_ma values ('TBLTHUEPHONG','MATP')
go

--kiem tra có xem bảng có tồn tại mã không
create procedure KTTonTai_Ma(@tenbang varchar(20), @ma varchar(10))
as
begin
declare @vquery nvarchar(70)
declare @tenma varchar(10)
declare @comm varchar(2)=''''
set @tenma=(select ma from bang_ma where tenbang=@tenbang)
set @vquery='select * from ' + @tenbang + ' where ' + @tenma + '=' + @comm + @ma + @comm
print @vquery
exec sp_executesql @vquery
end
go
--chay: exec dbo.KTTonTai_Ma 'TBLKHACHHANG', 'KH01'

--kiểm tra với biến bất kì

create procedure KTTonTai_ThuocTinh(@tenbang varchar(20),@TenThuocTinh varchar(20),@thuoctinh varchar(10))
as
begin
declare @vquery nvarchar(70)
declare @tenma varchar(10)
declare @comm varchar(2)='''' 

set @vquery='select * from ' + @tenbang + ' where ' + @TenThuocTinh + '=' + @comm + @thuoctinh + @comm
print @vquery
exec sp_executesql @vquery
end
go

-- lay giá dịch vụ
create function LayGiaDV(@madv char(10))
returns money
as
begin
	declare @tien money
	set @tien=(select GIADV from TBLDICHVU where MADV=@madv)
	return @tien
end
go

--Lấy tiền hóa đơn
create function LayTienHD(@mahd char(5))
returns money
as
begin
	declare @tien money
	set @tien=(select TONGTIEN from TBLHOADON where MAHD=@mahd)
	return @tien
end
go

-----------------------------------------------------------------------------------------------------------
--An

---Xóa nhân viên
GO
CREATE PROC XOANV @MANV VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS (SELECT * FROM dbo.TBLNHANVIEN WHERE MANV = @MANV))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
			DELETE FROM TBLNHANVIEN WHERE MANV = @MANV
	END		
END
GO 
---Thêm loại phòng 
CREATE PROC THEMLP @MALP VARCHAR(20),@LOAIPHONG NVARCHAR(20),@SOGIUONG INT,@DONGIA MONEY,@GHICHU NVARCHAR(50)
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE MALP = @MALP ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE LOAIPHONG = @LOAIPHONG))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			INSERT INTO TBLLOAIPHONG(MALP,LOAIPHONG,SOGIUONG,DONGIA,GHICHU) VALUES(
			@MALP,@LOAIPHONG,@SOGIUONG,@DONGIA,@GHICHU)
			
		END
	END
END
GO
--Thêm nhân viên

CREATE PROC THEMNV @MANV VARCHAR(20),@MATK VARCHAR(20),@TENNV NVARCHAR(40),@EMAIL VARCHAR(100),@NGVL DATETIME,@DIACHINV NVARCHAR(50),@NGSINHNV DATETIME,@SODTNV VARCHAR(20),@GIOITINH NVARCHAR(20) 
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTAIKHOAN WHERE MATK = @MATK ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLNHANVIEN WHERE MANV = @MANV))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			INSERT INTO TBLNHANVIEN(MANV,MATK,TENNV,EMAIL,NGVL,DIACHINV,NGSINHNV,SODTNV,GIOITINH) VALUES(
			@MANV,@MATK,@TENNV,@EMAIL,@NGVL,@DIACHINV,@NGSINHNV,@SODTNV,@GIOITINH)
			
		END
	END
END
GO

--SỬA NHÂN VIÊN

CREATE PROC SUANV @MANV VARCHAR(20),@MATK VARCHAR(20),@TENNV NVARCHAR(40),@EMAIL VARCHAR(100),@NGVL DATETIME,@DIACHINV NVARCHAR(50),@NGSINHNV DATETIME,@SODTNV VARCHAR(20),@GIOITINH NVARCHAR(20) 
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM dbo.TBLTAIKHOAN WHERE MATK = @MATK ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLNHANVIEN WHERE MANV = @MANV))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			UPDATE TBLNHANVIEN SET MANV = @MANV,MATK=@MATK,TENNV=@TENNV,EMAIL=@EMAIL,NGVL=@NGVL,DIACHINV=@DIACHINV,NGSINHNV=@NGSINHNV,SODTNV=@SODTNV,GIOITINH=@GIOITINH
		END
	END
END
GO
--Sửa loại phòng

CREATE PROC SUALP @MALP VARCHAR(20),@LOAIPHONG NVARCHAR(20),@SOGIUONG INT,@DONGIA MONEY,@GHICHU NVARCHAR(50)
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE MALP = @MALP ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE LOAIPHONG = @LOAIPHONG))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			UPDATE TBLLOAIPHONG SET MALP=@MALP,LOAIPHONG=@LOAIPHONG,SOGIUONG=@SOGIUONG,DONGIA=@DONGIA,GHICHU=@GHICHU
		END
	END
END
GO
---Trả phòng(tìm dịch vụ sử dụng, kiểm tra hợp lệ trả phòng)
CREATE PROC TRAPHONG @MATP VARCHAR(20),@MAPHONG VARCHAR(20),@NGAYTHUE DATETIME,@NGAYTRA DATETIME
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTHUEPHONG WHERE @MATP = @MATP ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(NOT EXISTS(SELECT * FROM TBLTHUEPHONG WHERE MAPHONG = @MAPHONG))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			SELECT B.TENDV,A.MADV,A.MANV,A.NGAYSD,A.SOLUONG,A.TIENSD
			FROM TBLSDDICHVU A ,TBLDICHVU B
			WHERE A.MADV=B.MADV AND  MATP=@MATP
			
		END
	END
END

-----------------------------------------------------------------------------------------------

---Xóa nhân viên
GO
CREATE PROC XOANV @MANV VARCHAR(20)
AS
BEGIN
	IF(NOT EXISTS (SELECT * FROM dbo.TBLNHANVIEN WHERE MANV = @MANV))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
			DELETE FROM TBLNHANVIEN WHERE MANV = @MANV
	END		
END
GO 
---Thêm loại phòng 
CREATE PROC THEMLP @MALP VARCHAR(20),@LOAIPHONG NVARCHAR(20),@SOGIUONG INT,@DONGIA MONEY,@GHICHU NVARCHAR(50)
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE MALP = @MALP ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE LOAIPHONG = @LOAIPHONG))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			INSERT INTO TBLLOAIPHONG(MALP,LOAIPHONG,SOGIUONG,DONGIA,GHICHU) VALUES(
			@MALP,@LOAIPHONG,@SOGIUONG,@DONGIA,@GHICHU)
			
		END
	END
END
GO
--Thêm nhân viên

CREATE PROC THEMNV @MANV VARCHAR(20),@MATK VARCHAR(20),@TENNV NVARCHAR(40),@EMAIL VARCHAR(100),@NGVL DATETIME,@DIACHINV NVARCHAR(50),@NGSINHNV DATETIME,@SODTNV VARCHAR(20),@GIOITINH NVARCHAR(20) 
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTAIKHOAN WHERE MATK = @MATK ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLNHANVIEN WHERE MANV = @MANV))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			INSERT INTO TBLNHANVIEN(MANV,MATK,TENNV,EMAIL,NGVL,DIACHINV,NGSINHNV,SODTNV,GIOITINH) VALUES(
			@MANV,@MATK,@TENNV,@EMAIL,@NGVL,@DIACHINV,@NGSINHNV,@SODTNV,@GIOITINH)
			
		END
	END
END
GO

--SỬA NHÂN VIÊN

CREATE PROC SUANV @MANV VARCHAR(20),@MATK VARCHAR(20),@TENNV NVARCHAR(40),@EMAIL VARCHAR(100),@NGVL DATETIME,@DIACHINV NVARCHAR(50),@NGSINHNV DATETIME,@SODTNV VARCHAR(20),@GIOITINH NVARCHAR(20) 
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM dbo.TBLTAIKHOAN WHERE MATK = @MATK ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLNHANVIEN WHERE MANV = @MANV))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			UPDATE TBLNHANVIEN SET MANV = @MANV,MATK=@MATK,TENNV=@TENNV,EMAIL=@EMAIL,NGVL=@NGVL,DIACHINV=@DIACHINV,NGSINHNV=@NGSINHNV,SODTNV=@SODTNV,GIOITINH=@GIOITINH
		END
	END
END
GO
--Sửa loại phòng

CREATE PROC SUALP @MALP VARCHAR(20),@LOAIPHONG NVARCHAR(20),@SOGIUONG INT,@DONGIA MONEY,@GHICHU NVARCHAR(50)
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE MALP = @MALP ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(EXISTS(SELECT * FROM TBLLOAIPHONG WHERE LOAIPHONG = @LOAIPHONG))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			UPDATE TBLLOAIPHONG SET MALP=@MALP,LOAIPHONG=@LOAIPHONG,SOGIUONG=@SOGIUONG,DONGIA=@DONGIA,GHICHU=@GHICHU
		END
	END
END
GO
---Trả phòng(tìm dịch vụ sử dụng, kiểm tra hợp lệ trả phòng)
CREATE PROC TRAPHONG @MATP VARCHAR(20),@MAPHONG VARCHAR(20),@NGAYTHUE DATETIME,@NGAYTRA DATETIME
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM TBLTHUEPHONG WHERE @MATP = @MATP ))
	BEGIN
		RETURN
	END
	ELSE
	BEGIN
		IF(NOT EXISTS(SELECT * FROM TBLTHUEPHONG WHERE MAPHONG = @MAPHONG))
		BEGIN
			RETURN
		END
		ELSE
		BEGIN
			SELECT B.TENDV,A.MADV,A.MANV,A.NGAYSD,A.SOLUONG,A.TIENSD
			FROM TBLSDDICHVU A ,TBLDICHVU B
			WHERE A.MADV=B.MADV AND  MATP=@MATP
			
		END
	END
END

----------------------------------------------------------------------------------------------------------
--T.anh

--•	Đặt phòng trước (cập nhập trạng thái phòng + lưu thông tin đặt phòng + lưu thông tin khách hàng)

alter PROC proc_datPhong
@MaDK nvarchar(20),@MANV nvarchar(20),@MaPhong nvarchar(20),@MaKH nvarchar(20),@NgayDK datetime ,@NgayDen datetime, @SoNguoi int
AS 

BEGIN 
	if (EXISTS (SELECT * FROM TBLPHONG with (rowlock) WHERE MAPHONG = @MaPhong AND TINHTRANG =N'Trống'))
	begin
	INSERT INTO TBLP_DANGKY VALUES(@MaDK,@MANV,@MaPhong,@MaKH,@NgayDK,@NgayDen,@SoNguoi)
	end
END



ALTER PROC proc_suaTTPhong
@MaPhong nvarchar(20),@TinhTrang nvarchar(20)
AS 
BEGIN 
	UPDATE TBLPHONG 
	SET  TINHTRANG = @TinhTrang
	WHERE MAPHONG = @MaPhong
	
END


EXEC 

--•	Thêm khách hàng (Kiểm tra thông tin khách hàng + lưu thông tin khách hàng)
CREATE PROC proc_themKH
@MaKH nvarchar(20),@TenKH nvarchar(20),@NgSinhKH datetime,@SDT nvarchar(20),@QuocTich nvarchar(40),@DiaChi nvarchar(50)
AS 
BEGIN 
	if(@MaKH = '')
	begin
	return
	end
	
	INSERT INTO TBLKHACHHANG VALUES(@MaKH,@TenKH,@NgSinhKH,@SDT,@QuocTich,@DiaChi)
	
END

EXEC proc_themKH 'KH06',N'Nguyễn Văn A','10/12/1980','021456984','VN','abc dia chi'

--•	Sửa khách hàng (Kiểm tra thông tin khách hàng + cập nhập thông tin khách hàng) 
CREATE PROC proc_suaKH
@MaKH nvarchar(20),@TenKH nvarchar(20),@NgSinhKH datetime,@SDT nvarchar(20),@QuocTich nvarchar(40),@DiaChi nvarchar(50)
AS 
BEGIN 
	if(@MaKH = '')
	begin
	return
	end
	
	UPDATE TBLKHACHHANG
	SET TENKH = @TenKH , NGSINHKH = @NgSinhKH , SODTKH = @SDT, QUOCTICHKH = @QuocTich, DIACHIKH = @DiaChi
	WHERE MAKH = @MaKH
	
END


EXEC proc_suaKH 'KH06',N'Nguyễn Văn B','10/12/1990','021456984','VN',N'KTX KHU B'

--•	Xóa khách hàng(kiểm tra rằng buộc)
--- result 1. Đang thuê phòng không được xóa
---  2. Đang Đặt Trước Phòng không dc xóa
--- 0. xóa thành công
CREATE PROC proc_xoaKH
@MaKH nvarchar(20),@Kq_xoa int output
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLTHUEPHONG WHERE MAKH = @MaKH))
	begin
		set @Kq_xoa = 1
		RETURN
	end
	IF(EXISTS(SELECT * FROM TBLP_DANGKY WHERE MAKH = @MaKH))
	begin
		set @Kq_xoa = 2
		RETURN
	end

	DELETE FROM TBLKHACHHANG 
	WHERE MAKH = @MaKH

	SET @Kq_xoa = 0
END


DECLARE 
@A INT
BEGIN
	EXEC proc_xoaKH 'KH04', @A output
	PRINT CAST(@A AS VARCHAR(10))
END


---•	Thêm phòng(kiểm tra thông tin, lưu thông tin phòng)
CREATE PROC proc_themPhong
@MaPhong nvarchar(20),@MaLP nvarchar(20),@TenPhong nvarchar(20),@TinhTrang nvarchar(20)
AS 
BEGIN 
	INSERT INTO TBLPHONG VALUES(@MaPhong,@MaLP,@TenPhong,@TinhTrang)
	
END

---•	Sửa phòng(tìm phòng, kiểm tra thông tin cập nhập + lưu)
CREATE PROC proc_suaPhong
@MaPhong nvarchar(20),@MaLP nvarchar(20),@TenPhong nvarchar(20),@TinhTrang nvarchar(20)
AS 
BEGIN 
	IF(EXISTS(SELECT * FROM TBLPHONG WITH (ROWLOCK) WHERE MAPHONG = @MaPhong))
	BEGIN
	UPDATE TBLPHONG
	SET MALP = @MaLP, TENPHONG = @TenPhong, TINHTRANG = @TinhTrang
	WHERE MAPHONG = @MaPhong
	END
END

---- thuê Phòng
CREATE PROC proc_thuePhong 
@MaTP VARCHAR(20), @MaPhong  VARCHAR(20), @NgThue datetime, @NgTra datetime, @MaKH VARCHAR(20)
AS
BEGIN
	IF(EXISTS(SELECT * FROM TBLPHONG with (rowlock) WHERE MAPHONG =@MaPhong))
	BEGIN
	INSERT INTO TBLTHUEPHONG VALUES(@MaTP,@MaPhong,@NgThue,@NgTra,@MaKH);
	END
end

delete from TBLTHUEPHONG
delete from TBLP_DANGKY
update TBLPHONG
set TINHTRANG=N'Trống'
