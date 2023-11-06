-- Cho biết mã số, họ tên, ngày sinh, địa chỉ và vị trí
-- của các cầu thủ thuộc đội bóng
-- ‘SHB Đà Nẵng’ có quốc tịch
-- (gì đó, đề bài ghi thiếu)

SELECT MACT, HOTEN, NGAYSINH, DIACHI, VITRI
FROM CAUTHU
WHERE MACLB IN (
    SELECT MACLB
    FROM CAULACBO
    WHERE TENCLB=N'SHB Đà Nẵng')