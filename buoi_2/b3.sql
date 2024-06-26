SELECT CAULACBO.MACLB, TENCLB, TENSAN, SANVD.DIACHI,
    COUNT (DISTINCT MACT) AS SOCAUTHUNUOCNGOAI
FROM CAULACBO, SANVD, CAUTHU
WHERE CAULACBO.MASAN=SANVD.MASAN
    AND CAULACBO.MACLB=CAUTHU.MACLB
    AND MAQG NOT IN (
        SELECT MAQG
        FROM QUOCGIA
        WHERE TENQG=N'Việt Nam')
GROUP BY CAULACBO.MACLB, TENCLB, TENSAN, SANVD.DIACHI
HAVING COUNT (DISTINCT MACT)>2

-- test: 
SELECT CAULACBO.MACLB, TENCLB, TENSAN, SANVD.DIACHI,
    COUNT (DISTINCT MACT) AS SOCAUTHUNUOCNGOAI
FROM CAULACBO, SANVD, CAUTHU
WHERE CAULACBO.MASAN=SANVD.MASAN
    AND CAULACBO.MACLB=CAUTHU.MACLB
    AND MAQG NOT IN (
        SELECT MAQG
        FROM QUOCGIA
        WHERE TENQG=N'Việt Nam')
GROUP BY CAULACBO.MACLB, TENCLB, TENSAN, SANVD.DIACHI