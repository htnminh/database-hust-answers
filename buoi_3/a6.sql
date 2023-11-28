SELECT TENCLB, TENTINH
FROM BANGXH BXH
    LEFT JOIN CAULACBO CLB ON BXH.MACLB = CLB.MACLB
    LEFT JOIN TINH ON CLB.MATINH = TINH.MATINH
WHERE VONG=3 AND NAM=2009
    AND TRY_CAST(SUBSTRING(HIEUSO, 1, CHARINDEX('-', HIEUSO)-1) AS INTEGER) = (
        SELECT MAX(TRY_CAST(SUBSTRING(HIEUSO, 1, CHARINDEX('-', HIEUSO)-1) AS INTEGER))
        FROM BANGXH
        WHERE VONG=3 AND NAM=2009
    )

-- test
SELECT BXH.*, TENCLB, TENTINH
FROM BANGXH BXH
    LEFT JOIN CAULACBO CLB ON BXH.MACLB = CLB.MACLB
    LEFT JOIN TINH ON CLB.MATINH = TINH.MATINH
WHERE VONG=3 AND NAM=2009