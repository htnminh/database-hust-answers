SELECT HLV_CLB.MAHLV, TENHLV AS HOTEN, NGAYSINH, DIACHI, VAITRO, TENCLB
FROM HLV_CLB, HUANLUYENVIEN, CAULACBO
WHERE HLV_CLB.MAHLV=HUANLUYENVIEN.MAHLV
    AND HLV_CLB.MACLB=CAULACBO.MACLB
    AND MATINH IN (
        SELECT MATINH
        FROM TINH
        WHERE TENTINH=N'Bình Dương')