SELECT TOP 3 TENCLB
FROM CAULACBO, BANGXH
WHERE CAULACBO.MACLB=BANGXH.MACLB
    AND VONG=3
ORDER BY DIEM DESC

-- so sánh với:
SELECT TENCLB, VONG, DIEM
FROM CAULACBO, BANGXH
WHERE CAULACBO.MACLB=BANGXH.MACLB
    AND VONG=3
ORDER BY DIEM DESC