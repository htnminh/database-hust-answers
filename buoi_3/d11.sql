DROP VIEW IF EXISTS D11

GO
CREATE VIEW D11 AS
SELECT MACLB2 AS MACLBSANKHACH, NAM, VONG,
    TRY_CAST(SUBSTRING(KETQUA, CHARINDEX('-', KETQUA)+1, LEN(KETQUA)-CHARINDEX('-', KETQUA)) AS INTEGER) SOBANTHANG,
    TRY_CAST(SUBSTRING(KETQUA, 1, CHARINDEX('-', KETQUA)-1) AS INTEGER) SOBANTHUA
FROM TRANDAU
WHERE MASAN IN (
    SELECT MASAN
    FROM CAULACBO
    WHERE MACLB = MACLB1
)
UNION ALL
SELECT MACLB1 AS MACLBSANKHACH, NAM, VONG,
    TRY_CAST(SUBSTRING(KETQUA, 1, CHARINDEX('-', KETQUA)-1) AS INTEGER) SOBANTHANG,
    TRY_CAST(SUBSTRING(KETQUA, CHARINDEX('-', KETQUA)+1, LEN(KETQUA)-CHARINDEX('-', KETQUA)) AS INTEGER) SOBANTHUA
FROM TRANDAU
WHERE MASAN IN (
    SELECT MASAN
    FROM CAULACBO
    WHERE MACLB = MACLB2
)
GO

SELECT *
FROM D11

-- test
SELECT MACLB1, MACLB2, MASAN, NAM, VONG, KETQUA,
    TRY_CAST(SUBSTRING(KETQUA, 1, CHARINDEX('-', KETQUA)-1) AS INTEGER) SOBANTHANG,
    TRY_CAST(SUBSTRING(KETQUA, CHARINDEX('-', KETQUA)+1, LEN(KETQUA)-CHARINDEX('-', KETQUA)) AS INTEGER) SOBANTHUA
FROM TRANDAU