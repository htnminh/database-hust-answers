DECLARE @n AS INT
DECLARE @i AS INT

SET @n = 5
SET @i = 0

WHILE @i < @n
BEGIN
    SET @i = @i + 1
    PRINT @i
END