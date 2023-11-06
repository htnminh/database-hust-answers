SELECT HLV_CLB.MAHLV, TENHLV AS HOTEN, NGAYSINH, DIACHI, VAITRO, TENCLB
FROM HLV_CLB, HUANLUYENVIEN, CAULACBO
WHERE HLV_CLB.MAHLV=HUANLUYENVIEN.MAHLV
    AND HLV_CLB.MACLB=CAULACBO.MACLB
    AND MAQG IN (
        SELECT MAQG
        FROM QUOCGIA
        WHERE TENQG=N'Việt Nam')
    