DECLARE @s1 as FLOAT
DECLARE @s2 as FLOAT

SET @s1 = 0.14
SET @s2 = 3

PRINT N'Số lớn nhất của ' + CAST(@s1 AS VARCHAR)
    + ' và ' + CAST(@s2 AS VARCHAR)
    + ' là: ' + CAST(GREATEST(@s1, @s2) AS VARCHAR)