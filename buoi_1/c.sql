-- # insert the following VALUES
-- 

-- MACT
-- HOTEN
-- VITRI
-- NGÀY SINH
-- DIACHI
-- MACLB
-- MAQG SO
-- 1
-- Nguyễn Vũ Phong
-- Tiền vệ
-- 20/02/1990
-- NULL
-- BBD
-- VN
-- 17
-- 2
-- Nguyễn Công Vinh
-- Tiền đạo
-- 10/03/1992
-- NULL
-- HAGL
-- VN
-- 9
-- 4
-- Trần Tấn Tài
-- Tiền vệ
-- 12/11/1989
-- NULL
-- BBD
-- VN
-- 8
-- 5
-- Phan Hồng Sơn
-- Thủ môn
-- 10/06/1991
-- NULL
-- HAGL
-- VN
-- 1
-- 6
-- Ronaldo
-- Tiền vệ
-- 12/12/1989
-- NULL
-- SDN
-- BRA
-- 7
-- 7
-- Robinho
-- Tiền vệ
-- 12/10/1989
-- NULL
-- SDN
-- BRA
-- 8
-- 8
-- Vidic
-- Hậu vệ
-- 15/10/1987
-- NULL
-- HAGL
-- ANH
-- 3
-- 9
-- Trần Văn Santos
-- Thủ môn
-- 21/10/1990
-- NULL
-- BBD
-- BRA
-- 1
-- 10
-- Nguyễn Trường Sơn
-- Hậu vệ
-- 26/8/1993
-- NULL
-- BBD
-- VN
-- 4

-- https://stackoverflow.com/questions/2005437/an-explicit-value-for-the-identity-column-in-table-can-only-be-specified-when-a

SET IDENTITY_INSERT dbo.CAUTHU ON
INSERT INTO dbo.CAUTHU(MACT, HOTEN, VITRI, NGAYSINH, DIACHI, MACLB, MAQG, SO)
VALUES
    (1, 'Nguyễn Vũ Phong', 'Tiền vệ', '02/20/1990', NULL, 'BBD', 'VN', 17),
    (2, 'Nguyễn Công Vinh', 'Tiền đạo', '03/10/1992', NULL, 'HAGL', 'VN', 9),
    (4, 'Trần Tấn Tài', 'Tiền vệ', '11/12/1989', NULL, 'BBD', 'VN', 8),
    (5, 'Phan Hồng Sơn', 'Thủ môn', '06/10/1991', NULL, 'HAGL', 'VN', 1),
    (6, 'Ronaldo', 'Tiền vệ', '12/12/1989', NULL, 'SDN', 'BRA', 7),
    (7, 'Robinho', 'Tiền vệ', '10/12/1989', NULL, 'SDN', 'BRA', 8),
    (8, 'Vidic', 'Hậu vệ', '10/15/1987', NULL, 'HAGL', 'ANH', 3),
    (9, 'Trần Văn Santos', 'Thủ môn', '10/21/1990', NULL, 'BBD', 'BRA', 1),
    (10, 'Nguyễn Trường Sơn', 'Hậu vệ', '08/26/1993', NULL, 'BBD', 'VN', 4)
SET IDENTITY_INSERT CAUTHU OFF

-- insert the following values
-- MAQG
-- TENQG
-- VN
-- Việt Nam
-- ANH
-- Anh Quốc
-- TBN
-- Tây Ban Nha
-- BDN
-- Bồ Đào Nha
-- BRA
-- Bra-xin
-- ITA
-- Y
-- THA
-- Thái Lan

INSERT INTO QUOCGIA
VALUES
    ('VN', 'Việt Nam'),
    ('ANH', 'Anh Quốc'),
    ('TBN', 'Tây Ban Nha'),
    ('BDN', 'Bồ Đào Nha'),
    ('BRA', 'Bra-xin'),
    ('ITA', 'Y'),
    ('THA', 'Thái Lan')

-- insert the following values
-- MACLB BBD
-- TENCLB BECAMEX BÌNH DƯƠNG
-- MASAN
-- MATINH
-- GD
-- BD
-- HAGL
-- HOÀNG ANH GIA LAI
-- PL
-- GL
-- SDN
-- SHB DA NANG
-- CL
-- DN
-- KKH
-- KHATOCO KHÁNH HÒA
-- NT
-- ΚΗ
-- TPY
-- THÉP PHÚ YÊN
-- TH
-- PY
-- GDT GẠCH ĐỒNG TÂM LONG AN
-- LA
-- LA

INSERT INTO CAULACBO
VALUES
    ('BBD', 'BECAMEX BÌNH DƯƠNG', 'GD', 'BD'),
    ('HAGL', 'HOÀNG ANH GIA LAI', 'PL', 'GL'),
    ('SDN', 'SHB DA NANG', 'CL', 'DN'),
    ('KKH', 'KHATOCO KHÁNH HÒA', 'NT', 'KH'),
    ('TPY', 'THÉP PHÚ YÊN', 'TH', 'PY'),
    ('GDT', 'GẠCH ĐỒNG TÂM LONG AN', 'LA', 'LA')

-- insert the following values
-- MATINH
-- TENTINH
-- BD
-- Bình Dương
-- GL
-- Gia Lai
-- DN
-- Đà Nẵng
-- KH
-- Khánh Hòa
-- PY
-- Phú Yên
-- LA
-- Long An

INSERT INTO TINH
VALUES
    ('BD', 'Bình Dương'),
    ('GL', 'Gia Lai'),
    ('DN', 'Đà Nẵng'),
    ('KH', 'Khánh Hòa'),
    ('PY', 'Phú Yên'),
    ('LA', 'Long An')

-- insert the following values
-- MAHLV
-- TENHL V
-- NGÀY SINH
-- DIACHI
-- DIENTHOAI
-- MAQG
-- HLV01
-- Vital
-- 15/10/1955
-- NULL
-- 0918011075 BDN
-- HLV02
-- Lê Huỳnh Đức
-- 20/05/1972
-- NULL
-- 01223456789 VN
-- HLV03
-- Kiatisuk
-- 11/12/1970
-- NULL
-- 01990123456 THA
-- HLV04
-- Hoàng Anh Tuấn
-- 10/06/1970
-- NULL
-- 0989112233
-- VN
-- HLV05
-- Trần Công Minh
-- 07/07/1973
-- NULL
-- 0909099990 VN
-- HLV06
-- Trần Văn Phúc
-- 02/03/1965
-- NULL
-- 01650101234 VN

INSERT INTO HUANLUYENVIEN
VALUES
    ('HLV01', 'Vital', '10/15/1955', NULL, '0918011075', 'BDN'),
    ('HLV02', 'Lê Huỳnh Đức', '05/20/1972', NULL, '01223456789', 'VN'),
    ('HLV03', 'Kiatisuk', '12/11/1970', NULL, '01990123456', 'THA'),
    ('HLV04', 'Hoàng Anh Tuấn', '06/10/1970', NULL, '0989112233', 'VN'),
    ('HLV05', 'Trần Công Minh', '07/07/1973', NULL, '0909099990', 'VN'),
    ('HLV06', 'Trần Văn Phúc', '03/02/1965', NULL, '01650101234', 'VN')

-- insert the following values
-- MASAN
-- TENSAN
-- GD
-- Gò Đậu
-- PL
-- Pleiku
-- CL
-- Chi Lăng
-- NT
-- TH
-- Nha Trang Tuy Hòa
-- LA
-- Long An
-- DIACHI
-- 123 QL1, TX Thủ Dầu Một, Bình Dương 22 Hồ Tùng Mậu, Thống Nhất, Thị xã Pleiku, Gia Lai 127 Võ Văn Tần, Đà Nẵng
-- | 128 Phan Chu Trinh, Nha Trang, Khánh Hòa 57 Trường Chinh, Tuy Hòa, Phú Yên 102 Hùng Vương, Tp Tân An, Long An

INSERT INTO SANVD
VALUES
    ('GD', 'Gò Đậu', '123 QL1, TX Thủ Dầu Một, Bình Dương'),
    ('PL', 'Pleiku', '22 Hồ Tùng Mậu, Thống Nhất, Thị xã Pleiku, Gia Lai'),
    ('CL', 'Chi Lăng', '127 Võ Văn Tần, Đà Nẵng'),
    ('NT', 'Nha Trang', '128 Phan Chu Trinh, Nha Trang, Khánh Hòa'),
    ('TH', 'Tuy Hòa', '57 Trường Chinh, Tuy Hòa, Phú Yên'),
    ('LA', 'Long An', '102 Hùng Vương, Tp Tân An, Long An')

-- insert the following values
-- MAHLV
-- MACLB
-- VAITRO
-- HLV01
-- BBD
-- HLV Chính
-- HLV02
-- SDN
-- HLV Chính
-- HLV03
-- HAGL
-- HLV Chính
-- HLV04
-- KKH
-- HLV Chính
-- HLV05
-- GDT
-- HLV Chính
-- HLV06
-- BBD
-- HLV thủ môn

INSERT INTO HLV_CLB
VALUES
    ('HLV01', 'BBD', 'HLV Chính'),
    ('HLV02', 'SDN', 'HLV Chính'),
    ('HLV03', 'HAGL', 'HLV Chính'),
    ('HLV04', 'KKH', 'HLV Chính'),
    ('HLV05', 'GDT', 'HLV Chính'),
    ('HLV06', 'BBD', 'HLV thủ môn')

-- insert the following values
-- MATRAN NAM VONG NGAYTD MACLB1
-- MACLB2 MASAN KETQUA
-- 1
-- 2009
-- 1
-- 7/2/2009
-- BBD
-- SDN
-- GD
-- 3-0
-- 2
-- 2009
-- 1
-- 7/2/2009
-- KKH
-- GDT
-- NT
-- 1-1
-- 3
-- 2009
-- 2
-- 16/2/2009
-- SDN
-- KKH
-- CL
-- 2-2
-- 4
-- 2009
-- 2
-- 16/2/2009
-- TPY
-- BBD
-- TH
-- 5-0
-- 5
-- 2009
-- 3
-- 1/3/2009
-- TPY
-- GDT
-- TH
-- 0-2
-- 6
-- 2009
-- 3
-- 1/3/2009
-- KKH
-- BBD
-- NT
-- 0-1
-- 7
-- 2009
-- 4
-- 7/3/2009
-- KKH
-- TPY
-- NT
-- 1-0
-- 8
-- 2009
-- 4
-- 7/3/2009
-- BBD
-- GDT
-- GD
-- 2-2

SET IDENTITY_INSERT dbo.TRANDAU ON
INSERT INTO dbo.TRANDAU(MATRAN, NAM, VONG, NGAYTD, MACLB1, MACLB2, MASAN, KETQUA)
VALUES
    (1, 2009, 1, '02/07/2009', 'BBD', 'SDN', 'GD', '3-0'),
    (2, 2009, 1, '02/07/2009', 'KKH', 'GDT', 'NT', '1-1'),
    (3, 2009, 2, '02/16/2009', 'SDN', 'KKH', 'CL', '2-2'),
    (4, 2009, 2, '02/16/2009', 'TPY', 'BBD', 'TH', '5-0'),
    (5, 2009, 3, '03/01/2009', 'TPY', 'GDT', 'TH', '0-2'),
    (6, 2009, 3, '03/01/2009', 'KKH', 'BBD', 'NT', '0-1'),
    (7, 2009, 4, '03/07/2009', 'KKH', 'TPY', 'NT', '1-0'),
    (8, 2009, 4, '03/07/2009', 'BBD', 'GDT', 'GD', '2-2')
SET IDENTITY_INSERT dbo.TRANDAU OFF


-- insert the following values
-- MACLB
-- NAM VONG SOTRAN
-- THANG
-- HOA THUA HIEUSO
-- DIEM HANG
-- BBD
-- 2009
-- 1
-- 1
-- 1
-- 0
-- 0
-- 3-0
-- 3
-- 1
-- KKH
-- 2009
-- 1
-- 1
-- 0
-- 1
-- 0
-- 1-1
-- 1
-- 2
-- GDT
-- 2009
-- 1
-- 1
-- 0
-- 1
-- 0
-- 1-1
-- 1
-- 3
-- TPY
-- 2009
-- 1
-- 0
-- 0
-- 0
-- 0
-- 0-0
-- 0
-- 4
-- SDN
-- 2009
-- 1
-- 1
-- 0
-- 0
-- 1
-- 0-3
-- 0
-- 5
-- TPY
-- 2009
-- 2
-- 1
-- 1
-- 0
-- 0
-- 5-0
-- 3
-- 1
-- BBD
-- 2009
-- 2
-- 2
-- 1
-- 0
-- 1
-- 3-5
-- 3
-- 2
-- KKH
-- 2009
-- 2
-- 2
-- 0
-- 2
-- 0
-- 3-3
-- 2
-- 3
-- GDT
-- 2009
-- 2
-- 1
-- 0
-- 1
-- 0
-- 1-1
-- 1
-- 4
-- SDN
-- 2009
-- 2
-- 2
-- 1
-- 1
-- 0
-- 2-5
-- 1
-- 5
-- BBD
-- 2009
-- 3
-- 3
-- 2
-- 0
-- 1
-- 4-5
-- 6
-- 1
-- GDT
-- 2009
-- 3
-- 2
-- 1
-- 1
-- 0
-- 3-1
-- 4
-- 2
-- TPY
-- 2009
-- 3
-- 2
-- 1
-- 0
-- 1
-- 5-2
-- 3
-- 3
-- KKH
-- 2009
-- 3
-- 3
-- 0
-- 2
-- 1
-- 3-4
-- 2
-- 4
-- SDN
-- 2009
-- 3
-- 2
-- 1
-- 1
-- 0
-- 2-5
-- 1
-- 5
-- BBD
-- 2009
-- 4
-- 4
-- 2
-- 1
-- 1
-- 6-7
-- 7
-- 1
-- GDT
-- 2009
-- 4
-- 3
-- 1
-- 2
-- 0
-- 5-1
-- 5
-- 2
-- KKH
-- 2009
-- 4
-- 4
-- 1
-- 2
-- 1
-- 4-4
-- 5
-- 3
-- TPY
-- 2009
-- 4
-- 3
-- 1
-- 0
-- 2
-- 5-3
-- 3
-- 4
-- SDN
-- 2009
-- 4
-- 2
-- 1
-- 1
-- 0
-- 2-5
-- 1
-- 5

INSERT INTO BANGXH
VALUES
    ('BBD', 2009, 1, 1, 1, 0, 0, '3-0', 3, 1),
    ('KKH', 2009, 1, 1, 0, 1, 0, '1-1', 1, 2),
    ('GDT', 2009, 1, 1, 0, 1, 0, '1-1', 1, 3),
    ('TPY', 2009, 1, 0, 0, 0, 0, '0-0', 0, 4),
    ('SDN', 2009, 1, 1, 0, 0, 1, '0-3', 0, 5),
    ('TPY', 2009, 2, 1, 1, 0, 0, '5-0', 3, 1),
    ('BBD', 2009, 2, 2, 1, 0, 1, '3-5', 3, 2),
    ('KKH', 2009, 2, 2, 0, 2, 0, '3-3', 2, 3),
    ('GDT', 2009, 2, 1, 0, 1, 0, '1-1', 1, 4),
    ('SDN', 2009, 2, 2, 1, 1, 0, '2-5', 1, 5),
    ('BBD', 2009, 3, 3, 2, 0, 1, '4-5', 6, 1),
    ('GDT', 2009, 3, 2, 1, 1, 0, '3-1', 4, 2),
    ('TPY', 2009, 3, 2, 1, 0, 1, '5-2', 3, 3),
    ('KKH', 2009, 3, 3, 0, 2, 1, '3-4', 2, 4),
    ('SDN', 2009, 3, 2, 1, 1, 0, '2-5', 1, 5),
    ('BBD', 2009, 4, 4, 2, 1, 1, '6-7', 7, 1),
    ('GDT', 2009, 4, 3, 1, 2, 0, '5-1', 5, 2),
    ('KKH', 2009, 4, 4, 1, 2, 1, '4-4', 5, 3),
    ('TPY', 2009, 4, 3, 1, 0, 2, '5-3', 3, 4),
    ('SDN', 2009, 4, 2, 1, 1, 0, '2-5', 1, 5)

