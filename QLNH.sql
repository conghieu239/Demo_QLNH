﻿CREATE DATABASE QUANLYNHAHANG1

CREATE TABLE NHANVIEN
(
   IDNV CHAR(6) CONSTRAINT NV_MANV_PK PRIMARY KEY,
   HOTEN NVARCHAR(40) CONSTRAINT NV_HOTEN_NN NOT NULL,
   NGSINH SMALLDATETIME,
   SODT NVARCHAR(15),
   GT NVARCHAR(3),
   DIACHI NVARCHAR(50),
   NGAYLAM SMALLDATETIME,
   CALAM INT,
   LUONG FLOAT
)
CREATE TABLE KHUYENMAI
(
	IDKM CHAR(10) CONSTRAINT KM_IDKM_PK PRIMARY KEY,
	TENKM NVARCHAR(50),
	GIAMGIA CHAR(5),
	NGAYBATDAU SMALLDATETIME,
	NGAYKETTHUC SMALLDATETIME
)
CREATE TABLE MENUDOAN
(
   TENMON NVARCHAR(100) CONSTRAINT MA_TENMON_PK PRIMARY KEY,
   DONVITINH NVARCHAR(10),
   GIAMON MONEY
)
CREATE TABLE MENUDOUONG
(
   TENDOUONG NVARCHAR(100) CONSTRAINT MU_TENDOUONG_PK PRIMARY KEY,
   SIZE NVARCHAR (5),
   GIADOUONG MONEY
)
CREATE TABLE BANAN
(
   SOBAN CHAR(5) CONSTRAINT BA_SOBAN_PK PRIMARY KEY,
   NVORDER CHAR(6),
   DOAN NVARCHAR(300),
   DOUONG NVARCHAR(300),
   TRIGIA MONEY
)

CREATE TABLE HOADON
(
   SOHOADON CHAR(4) CONSTRAINT HD_SOHD_PK PRIMARY KEY,
   MABANAN CHAR(5),
   NGAY SMALLDATETIME,
   TONGMONAN NVARCHAR(300),
   TONGDOUONG NVARCHAR(300),
   CTKM CHAR(10),
   TONGTIEN MONEY
)


CREATE TABLE NHAPKHO
(
   MAHDNHAP CHAR(4) CONSTRAINT NK_MANHAP_PK PRIMARY KEY,
   NGAYNHAP SMALLDATETIME,
   MANV CHAR(6),
   TRIGIA MONEY
)

CREATE TABLE SANPHAMNHAP
(
   MASP CHAR(5) CONSTRAINT SPN_MASP_PK PRIMARY KEY,
   TENSP NVARCHAR(50),
   DONVI NVARCHAR(4),
   SOLUONG INT,
   GIANHAP MONEY
)
CREATE TABLE CTPN
(
   MAHDNHAP CHAR(4) PRIMARY KEY, 
   MASP CHAR(5),
   SOLUONG INT
)

CREATE TABLE XUATKHO
(
   MAHDXUAT CHAR(4) CONSTRAINT XK_MAXUAT_PK PRIMARY KEY,
   NGAYXUAT SMALLDATETIME,
   MANV CHAR(6)
)

CREATE TABLE SANPHAMXUAT
(
   MASP CHAR(5) CONSTRAINT SPX_MASP_PK PRIMARY KEY,
   TENSP NVARCHAR(50),
   DONVI NVARCHAR(4),
   SOLUONG INT
)
CREATE TABLE CTPX 
(
   MAHDXUAT CHAR(4) PRIMARY KEY,
   MASP CHAR(5),
   SOLUONG INT,
)

CREATE TABLE KHACHHANG
(
    IDKH CHAR(5) CONSTRAINT KH_IDKH_PK PRIMARY KEY,
	HOTENKH NVARCHAR(40) CONSTRAINT KH_HOTEN_NN NOT NULL,
	LOAIKHACH NVARCHAR(10),
	NGAYSINH SMALLDATETIME,
	NGAYLAPTHE SMALLDATETIME,
	SDT NVARCHAR(15),	
	EMAIL NVARCHAR(50),	
	IDNGUOILAP CHAR(6),
	DIACHI NVARCHAR(20)
)


CREATE TABLE BAOCAO
(
	IDBC CHAR(4) CONSTRAINT BC_IDBC_PK PRIMARY KEY,
	MANVBC CHAR(6),
	NGAYTHANG SMALLDATETIME,
	DOANHTHU MONEY,
	CHIPHI MONEY,
	LOINHUAN MONEY
)

CREATE TABLE QUYDINH 
(
	MAQD CHAR(4) CONSTRAINT QD_MAQD_PK PRIMARY KEY,
	TENQD NVARCHAR(500),
	MANVBIPHAT CHAR(6),
	HINHTHUCPHAT NVARCHAR(30)
)

--------------foreign key
ALTER TABLE HOADON ADD CONSTRAINT HD_BAN_FK FOREIGN KEY (MABANAN) REFERENCES BANAN(SOBAN)
ALTER TABLE HOADON ADD CONSTRAINT HD_HDKM_FK FOREIGN KEY (CTKM) REFERENCES KHUYENMAI(IDKM)
ALTER TABLE NHAPKHO ADD CONSTRAINT NK_MANV_FK FOREIGN KEY (MANV) REFERENCES NHANVIEN(IDNV)
ALTER TABLE CTPN ADD CONSTRAINT CT_MAHD_FK FOREIGN KEY (MAHDNHAP) REFERENCES NHAPKHO(MAHDNHAP)
ALTER TABLE CTPN ADD CONSTRAINT CT_MASP_FK FOREIGN KEY (MASP) REFERENCES SANPHAMNHAP(MASP)
ALTER TABLE XUATKHO ADD CONSTRAINT XK_MANV_FK FOREIGN KEY (MANV) REFERENCES NHANVIEN(IDNV)
ALTER TABLE CTPX ADD CONSTRAINT CT_MAHDXUAT_FK FOREIGN KEY (MAHDXUAT) REFERENCES XUATKHO(MAHDXUAT)
ALTER TABLE CTPX ADD  CONSTRAINT CT_MASPXUAT_FK FOREIGN KEY (MASP) REFERENCES SANPHAMXUAT(MASP)
ALTER TABLE KHACHHANG ADD CONSTRAINT KH_NGUOILAP_FK FOREIGN KEY (IDNGUOILAP) REFERENCES NHANVIEN(IDNV)
ALTER TABLE BAOCAO ADD CONSTRAINT BC_IDNV_FK FOREIGN KEY (MANVBC) REFERENCES NHANVIEN(IDNV)
ALTER TABLE QUYDINH ADD CONSTRAINT QD_IDNC_FK FOREIGN KEY (MANVBIPHAT) REFERENCES NHANVIEN(IDNV)
ALTER TABLE BANAN ADD CONSTRAINT BA_IDNV_FK FOREIGN KEY (NVORDER) REFERENCES NHANVIEN(IDNV)


--------------INSERT 
INSERT INTO NHANVIEN VALUES (N'NV_1',N'Nguyễn Thị Hoa','1999/04/19',N'0888238343',N'Nữ',N'Q1 HCM','2022/04/10',1,8000000)
INSERT INTO NHANVIEN VALUES (N'NV_2',N'Hoàng Văn Tuấn','1997/05/02',N'0389485568',N'Nam',N'Q3 HCM','2022/06/15',1,7500000)
INSERT INTO NHANVIEN VALUES (N'NV_3',N'Hoàng Thị Thanh','1999/06/25',N'0934345335',N'Nữ',N'Q8 HCM','2022/10/23',3,7000000)
INSERT INTO NHANVIEN VALUES (N'NV_4',N'Trần Quốc Đạt','1998/12/18',N'0388545658',N'Nam',N'Q1 HCM','2022/08/21',2,7300000)
INSERT INTO NHANVIEN VALUES (N'NV_5',N'Ngô Thanh Tâm','2000/06/28',N'0894549956',N'Nữ',N'Q3 HCM','2022/07/05',3,7600000)

INSERT INTO KHUYENMAI VALUES(N'KM_01',N'Chương trình khuyến mãi mừng khai trương','40%',2022/06/03,	2022/06/18)
INSERT INTO KHUYENMAI VALUES(N'KM_03',N'Chương trình khuyến mãi 30/4-01/05','20%',2023/04/28,2023/05/02)
INSERT INTO KHUYENMAI VALUES(N'KM_02',N'Chương trình khuyến mãi tháng 3/2023','10%',2023/03/01,2023/03/31)
INSERT INTO KHUYENMAI VALUES(N'KM_04',N'Chương trình khuyến mãi cho khách hàng VIP ','8%',null	,Null)



INSERT INTO MENUDOAN VALUES (N'Khay thịt Un Matin',N'Phần',890000)
INSERT INTO MENUDOAN VALUES (N'Khay hải sản Un Matin',N'Phần',790000)
INSERT INTO MENUDOAN VALUES (N'Cá chép áp chảo Un Matin',N'Phần',289000)
INSERT INTO MENUDOAN VALUES (N'Bánh dâu Pháp',N'Phần',189000)
INSERT INTO MENUDOAN VALUES (N'Thạch cổ bê',N'Phần',399000)

INSERT INTO MENUDOAN VALUES (N'Trà tứ hoa',N'S',49000)
INSERT INTO MENUDOAN VALUES (N'Cúc tâm trà',N'L',49000)		
INSERT INTO MENUDOAN VALUES (N'Trà quý phi',N'M',49000)		

INSERT INTO BANAN VALUES ('BAN01',N'NV_1',N'Khay hải sản Un Matin,Bánh dâu Pháp',N'Trà quý phi',1238000)
INSERT INTO BANAN VALUES ('BAN02',N'NV_4',N'Cá chép áp chảo Un Matin,Thạch cổ bê',N'Trà tứ hoa',527000)
INSERT INTO BANAN VALUES ('BAN03',N'NV_4',N'Khay thịt Un Matin,Khay hải sản Un Matin',N'Trà tứ hoa',1729000)
INSERT INTO BANAN VALUES ('BAN04',N'NV_1',N'Khay hải sản Un Matin,Thạch cổ bê',N'Cúc tâm trà',1028000)
INSERT INTO BANAN VALUES ('BAN05',N'NV_2',N'Cá chép áp chảo Un Matin,Khay thịt Un Matin,Bánh dâu Pháp',N'Trà quý phi,Trà tứ hoa',1676000)
INSERT INTO BANAN VALUES ('BAN06',N'NV_1',N'Cá chép áp chảo Un Matin,Khay hải sản Un Matin',N'Trà tứ hoa,Trà quý phi',1177000)
INSERT INTO BANAN VALUES ('BAN07',N'NV_1',N'Khay hải sản Un Mati,Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Trà quý phi',1366000)
INSERT INTO BANAN VALUES ('BAN08',N'NV_3',N'Bánh dâu Pháp',N'Trà quý phi',448000)
INSERT INTO BANAN VALUES ('BAN09',N'NV_3',N'Bánh dâu Pháp,Thạch cổ bê',N'Trà quý phi,Cúc tâm trà',686000)
INSERT INTO BANAN VALUES ('BAN10',N'NV_2',N'Thạch cổ bê,Thạch cổ bê,Bánh dâu Pháp',N'Trà quý phi,Cúc tâm trà,Trà tứ hoa',924000)
INSERT INTO BANAN VALUES ('BAN11',N'NV_2',N'Cá chép áp chảo Un Matin,Khay thịt Un Matin',N'Trà quý phi,Trà tứ hoa',1277000)
INSERT INTO BANAN VALUES ('BAN12',N'NV_3',N'Khay thịt Un Matin,Khay hải sản Un Matin,Bánh dâu Pháp',N'Trà quý phi,Trà tứ hoa',2177000)
INSERT INTO BANAN VALUES ('BAN13',N'NV_4',N'Cá chép áp chảo Un Matin,Bánh dâu Pháp,Thạch cổ bê',N'Trà tứ hoa',926000)
INSERT INTO BANAN VALUES ('BAN14',N'NV_1',N'Khay hải sản Un Matin,Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Trà tứ hoa',1366000)
INSERT INTO BANAN VALUES ('BAN15',N'NV_3',N'Bánh dâu Pháp,Thạch cổ bê,Bánh dâu Pháp',N'Trà quý phi,Cúc tâm trà,Trà tứ hoa',1134000)
INSERT INTO BANAN VALUES ('BAN16',N'NV_2',N'Bánh dâu Pháp,Cá chép áp chảo Un Matin,Thạch cổ bê,Khay hải sản Un Matin',N'Trà quý phi,Cúc tâm trà',1765000)
INSERT INTO BANAN VALUES ('BAN17',N'NV_1',N'Khay thịt Un Matin,Khay hải sản Un Matin',N'Trà quý phi, Trà tứ hoa',1778000)
INSERT INTO BANAN VALUES ('BAN18',N'NV_4',N'Khay hải sản Un Matin,Cá chép áp chảo Un Matin',N'Cúc tâm trà,Trà quý phi',1177000)
INSERT INTO BANAN VALUES ('BAN19',N'NV_2',N'Khay hải sản Un Matin,Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Cúc tâm trà,Trà tứ hoa',1415000)
INSERT INTO BANAN VALUES ('BAN20',N'NV_1',N'Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Trà tứ hoa',576000)


INSERT INTO HOADON VALUES (	N'HD01','BAN01','2023/03/15',N'Khay hải sản Un Matin,Bánh dâu Pháp',N'Trà quý phi','KM_04',1138960)
INSERT INTO HOADON VALUES (	N'HD02','BAN02','2023/03/15',N'Cá chép áp chảo Un Matin,Thạch cổ bê',N'Trà tứ hoa','KM_02',474300)
INSERT INTO HOADON VALUES (	N'HD03','BAN03','2023/03/15',N'Khay thịt Un Matin,Khay hải sản Un Matin',N'Trà tứ hoa','KM_04',1590680)
INSERT INTO HOADON VALUES (	N'HD04','BAN04','2023/03/15',N'Khay hải sản Un Matin,Thạch cổ bê',N'Cúc tâm trà','KM_02',925200)
INSERT INTO HOADON VALUES (	N'HD05','BAN05','2023/03/15',N'Cá chép áp chảo Un Matin,Khay thịt Un Matin,Bánh dâu Pháp',N'Trà quý phi,Trà tứ hoa','KM_01',1005600)
INSERT INTO HOADON VALUES (	N'HD06','BAN06','2023/03/15',N'Cá chép áp chảo Un Matin,Khay hải sản Un Matin',N'Trà tứ hoa,Trà quý phi','KM_02',1059300)
INSERT INTO HOADON VALUES (	N'HD07','BAN07','2023/03/15',N'Khay hải sản Un Mati,Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Trà quý phi','KM_04',1256720)
INSERT INTO HOADON VALUES (	N'HD08','BAN08','2023/03/15',N'Bánh dâu Pháp',N'Trà quý phi','KM_04',412160)
INSERT INTO HOADON VALUES (	N'HD09','BAN09','2023/03/15',N'Bánh dâu Pháp,Thạch cổ bê',N'Trà quý phi,Cúc tâm trà','KM_02',617400)
INSERT INTO HOADON VALUES (	N'HD10','BAN10','2023/03/15',N'Thạch cổ bê,Thạch cổ bê,Bánh dâu Pháp',N'Trà quý phi,Cúc tâm trà,Trà tứ hoa','KM_04',850080)
INSERT INTO HOADON VALUES (	N'HD11','BAN11','2023/03/15',N'Cá chép áp chảo Un Matin,Khay thịt Un Matin',N'Trà quý phi,Trà tứ hoa','KM_03',1021600)
INSERT INTO HOADON VALUES (	N'HD12','BAN12','2023/03/15',N'Khay thịt Un Matin,Khay hải sản Un Matin,Bánh dâu Pháp',N'Trà quý phi,Trà tứ hoa','KM_03',1741600)
INSERT INTO HOADON VALUES (	N'HD13','BAN13','2023/03/15',N'Cá chép áp chảo Un Matin,Bánh dâu Pháp,Thạch cổ bê',N'Trà tứ hoa','KM_03',740800)
INSERT INTO HOADON VALUES (	N'HD14','BAN14','2023/03/15',N'Khay hải sản Un Matin,Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Trà tứ hoa','KM_04',1256720)
INSERT INTO HOADON VALUES (	N'HD15','BAN15','2023/03/15',N'Bánh dâu Pháp,Thạch cổ bê,Bánh dâu Pháp',N'Trà quý phi,Cúc tâm trà,Trà tứ hoa','KM_04',1043280)
INSERT INTO HOADON VALUES (	N'HD16','BAN16','2023/03/15',N'Bánh dâu Pháp,Cá chép áp chảo Un Matin,Thạch cổ bê,Khay hải sản Un Matin',N'Trà quý phi,Cúc tâm trà','KM_04',1623800)
INSERT INTO HOADON VALUES (	N'HD17','BAN17','2023/03/15',N'Khay thịt Un Matin,Khay hải sản Un Matin',N'Trà quý phi, Trà tứ hoa','KM_02',1600200)
INSERT INTO HOADON VALUES (	N'HD18','BAN18','2023/03/15',N'Khay hải sản Un Matin,Cá chép áp chảo Un Matin',N'Cúc tâm trà,Trà quý phi','KM_02',1059300)
INSERT INTO HOADON VALUES (	N'HD19','BAN19','2023/03/15',N'Khay hải sản Un Matin,Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Cúc tâm trà,Trà tứ hoa','KM_03',1132000)
INSERT INTO HOADON VALUES (	N'HD20','BAN20','2023/03/15',N'Cá chép áp chảo Un Matin,Thạch cổ bê',N'Cúc tâm trà,Trà tứ hoa','KM_04',529920)



INSERT INTO NHAPKHO VALUES (N'HN01','2022/10/01',N'NV_2',1000000)
INSERT INTO NHAPKHO VALUES (N'HN02','2022/10/15',N'NV_2',15000000)
INSERT INTO NHAPKHO VALUES (N'HN03','2022/11/01',N'NV_3',2000000)
INSERT INTO NHAPKHO VALUES (N'HN04','2022/11/15',N'NV_3',7000000)
INSERT INTO NHAPKHO VALUES (N'HN05','2022/12/01',N'NV_4',3000000)

			
INSERT INTO SANPHAMNHAP VALUES(N'G01',N'Cánh gà',N'Cái',100,5000)
INSERT INTO SANPHAMNHAP VALUES(N'B01',N'Thịt bò',N'Kí',50,300000)
INSERT INTO SANPHAMNHAP VALUES(N'D01',N'Dâu',N'Kí ',20,100000)
INSERT INTO SANPHAMNHAP VALUES(N'M01',N'Mực',N'Kí',20,350000)
INSERT INTO SANPHAMNHAP VALUES(N'C01',N'Cá chép',N'Kí',25,120000)

INSERT INTO CTPN VALUES(N'HN01',N'G01',100)
INSERT INTO CTPN VALUES(N'HN02',N'B01',50)
INSERT INTO CTPN VALUES(N'HN03',N'D01',20)
INSERT INTO CTPN VALUES(N'HN04',N'M01',20)
INSERT INTO CTPN VALUES(N'HN05',N'C01',25)

INSERT INTO XUATKHO VALUES (N'HX01','2022/10/03',N'NV_2')
INSERT INTO XUATKHO VALUES (N'HX02','2022/10/18',N'NV_2')
INSERT INTO XUATKHO VALUES (N'HX03','2022/11/04',N'NV_3')
INSERT INTO XUATKHO VALUES (N'HX04','2022/11/18',N'NV_3')
INSERT INTO XUATKHO VALUES (N'HX05','2022/12/03',N'NV_4')

INSERT INTO SANPHAMXUAT VALUES(N'D01',N'Dâu',N'Kí',10)
INSERT INTO SANPHAMXUAT VALUES(N'G01',N'Cánh gà',N'Cái',40)
INSERT INTO SANPHAMXUAT VALUES(N'B01',N'Thịt bò',N'Kí',24)

INSERT INTO CTPX VALUES(N'HX01',N'G01',40)
INSERT INTO CTPX VALUES(N'HX02',N'D01',10)
INSERT INTO CTPX VALUES(N'HX03',N'B01',24)

INSERT INTO KHACHHANG VALUES(N'KH_01',N'Nguyễn Thị Thanh Nhã',N'Vip','1987/03/20','2022/09/10',N'0333998584',N'thanhnha@gmail.com',N'NV_1',N'Q1 HCM')
INSERT INTO KHACHHANG VALUES(N'KH_02',N'Văn Hữu Hiếu',N'Thường','1990/09/23','2022/10/10',N'0935747335',N'Huuhieu23@gmail.com',N'NV_3' ,N'Q3 HCM')
INSERT INTO KHACHHANG VALUES(N'KH_03',N'Trần Ái Nhi	Nữ',N'Vip','1999/10/14','2022/12/12',N'0939538835',N'Nhitran99@gmail.com',N'NV_2',N'Q10 HCM')
INSERT INTO KHACHHANG VALUES(N'KH_04',N'Lưu Bảo Minh',N'Vip','03/01/1993','2022/10/12',N'0845458335',N'Minhluu21@gmail.com	',N'NV_2',N'Q1 HCM')
INSERT INTO KHACHHANG VALUES(N'KH_05',N'Đỗ Thành Đạt',N'Thường','1995/02/18','2022/09/25',N'0344588439',N'Thanhdat1802@gmail.com',N'NV_4',N'Q3 HCM')




INSERT INTO BAOCAO VALUES('BC_1',N'NV_1','2022/10/30',230000000,150000000,80000000)
INSERT INTO BAOCAO VALUES('BC_2',N'NV_2','2022/11/30',235000000,140000000,95000000)
INSERT INTO BAOCAO VALUES('BC_3',N'NV_3','2022/12/30',220000000,143000000,77000000)
INSERT INTO BAOCAO VALUES('BC_4',N'NV_4','2022/01/30',320000000,160000000,160000000)
INSERT INTO BAOCAO VALUES('BC_5',N'NV_5','2022/02/28',280000000,170000000,110000000)

INSERT INTO QUYDINH VALUES('QĐ01',N'Đi muộn, về sớm, tự động nghỉ  khi chưa có sự cho phép của quản lý, giám sát.',N'NV_3',N'-50000')
INSERT INTO QUYDINH VALUES('QĐ02',N'Hút thuốc lá trong khu vực làm việc',N'NV_2',N'-5%')
INSERT INTO QUYDINH VALUES('QĐ03',N'Tự ý sử dụng thiết bị của nhà hàng',N'NV_3',N'-5%')
INSERT INTO QUYDINH VALUES('QĐ04',N'Trộm cắp, chiếm hữu tài sản của nhà hàng hoặc khách hàng',N'NV_4',N'Sa thải')
INSERT INTO QUYDINH VALUES('QĐ05',N'Cư xử không đúng mực với khách hàng, đồng nghiệp',N'NV_3',N'Sa thải')


-----------------DROP FOREIGN KEY
ALTER TABLE HOADON DROP CONSTRAINT HD_BAN_FK
ALTER TABLE HOADON DROP CONSTRAINT HD_HDKM_FK
ALTER TABLE NHAPKHO DROP CONSTRAINT NK_MANV_FK
ALTER TABLE XUATKHO DROP CONSTRAINT XK_MANV_FK
ALTER TABLE CTPN DROP CONSTRAINT CT_MAHD_FK
ALTER TABLE CTPN DROP CONSTRAINT CT_MASP_FK
ALTER TABLE CTPX DROP CONSTRAINT CT_MAHDXUAT_FK
ALTER TABLE CTPX DROP CONSTRAINT CT_MASPXUAT_FK
ALTER TABLE KHACHHANG DROP CONSTRAINT KH_NGUOILAP_FK
ALTER TABLE BAOCAO DROP CONSTRAINT BC_IDNV_FK
ALTER TABLE QUYDINH DROP CONSTRAINT QD_IDNC_FK
ALTER TABLE BANAN DROP CONSTRAINT BA_IDNV_FK

-------DROP TABLE
DROP TABLE NHANVIEN
DROP TABLE MENUDOAN
DROP TABLE MENUDOUONG
DROP TABLE BANAN
DROP TABLE HOADON
DROP TABLE NHAPKHO
DROP TABLE SANPHAMNHAP
DROP TABLE CTPN
DROP TABLE XUATKHO
DROP TABLE SANPHAMXUAT
DROP TABLE CTPX 
DROP TABLE KHACHHANG
DROP TABLE KHUYENMAI
DROP TABLE BAOCAO
DROP TABLE QUYDINH
