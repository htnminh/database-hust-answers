WITH MAXVONG (NAM2009) AS (
    SELECT MAX(VONG)
    FROM BANGXH
    WHERE NAM=2009
)

SELECT * --TENCLB, TENTINH
FROM BANGXH BXH
    LEFT JOIN CAULACBO CLB ON BXH.MACLB = CLB.MACLB
    LEFT JOIN TINH ON CLB.MATINH = TINH.MATINH
WHERE VONG = (SELECT NAM2009 FROM MAXVONG)
    AND NAM=2009
    AND CAST(SUBSTRING(HIEUSO, 1, 1) AS INT) -  CAST(SUBSTRING(HIEUSO, 3, 1) AS INT) = (
        SELECT MAX(CAST(SUBSTRING(HIEUSO, 1, 1) AS INT) -  CAST(SUBSTRING(HIEUSO, 3, 1) AS INT))
        FROM BANGXH
        WHERE NAM=2009
            AND VONG = (SELECT NAM2009 FROM MAXVONG)
    )