DROP VIEW IF EXISTS D4

GO
CREATE VIEW D4 AS
SELECT CLB.MACLB, TENCLB, TENSAN, SANVD.DIACHI,
    COUNT(DISTINCT MACT) AS SOCTNUOCNGOAI
FROM CAULACBO CLB
    LEFT JOIN SANVD ON CLB.MASAN = SANVD.MASAN
    RIGHT JOIN CAUTHU CT ON CLB.MACLB = CT.MACLB
WHERE MAQG NOT IN (
    SELECT MAQG
    FROM QUOCGIA
    WHERE TENQG=N'Việt Nam'    
)
GROUP BY CLB.MACLB, TENCLB, TENSAN, SANVD.DIACHI
HAVING COUNT(DISTINCT MACT) > 2
GO

SELECT *
FROM D4

-- test 
SELECT CLB.MACLB, TENCLB, TENSAN, SANVD.DIACHI,
    COUNT(DISTINCT MACT) AS SOCTNUOCNGOAI
FROM CAULACBO CLB
    LEFT JOIN SANVD ON CLB.MASAN = SANVD.MASAN
    RIGHT JOIN CAUTHU CT ON CLB.MACLB = CT.MACLB
WHERE MAQG NOT IN (
    SELECT MAQG
    FROM QUOCGIA
    WHERE TENQG=N'Việt Nam'    
)
GROUP BY CLB.MACLB, TENCLB, TENSAN, SANVD.DIACHI