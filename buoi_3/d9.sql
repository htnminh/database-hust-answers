DROP VIEW IF EXISTS D9

GO
CREATE VIEW D9 AS
SELECT MACLB1, MACLB2, NAM, VONG,
    TRY_CAST(SUBSTRING(KETQUA, 1, CHARINDEX('-', KETQUA)-1) AS INTEGER) SOBANTHANG,
    TRY_CAST(SUBSTRING(KETQUA, CHARINDEX('-', KETQUA)+1, LEN(KETQUA)-CHARINDEX('-', KETQUA)) AS INTEGER) SOBANTHUA
FROM TRANDAU
GO

SELECT *
FROM D9

-- test
SELECT MACLB1, MACLB2, NAM, VONG, KETQUA,
    TRY_CAST(SUBSTRING(KETQUA, 1, CHARINDEX('-', KETQUA)-1) AS INTEGER) SOBANTHANG,
    TRY_CAST(SUBSTRING(KETQUA, CHARINDEX('-', KETQUA)+1, LEN(KETQUA)-CHARINDEX('-', KETQUA)) AS INTEGER) SOBANTHUA
FROM TRANDAU
