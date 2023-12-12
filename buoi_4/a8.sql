-- có thể dùng công thức nhưng khuyến nghị
-- dùng phương pháp dưới để luyện tập lệnh rẽ nhánh (conditional statement)

DECLARE @n AS INT
DECLARE @i AS INT
DECLARE @count AS INT
DECLARE @sum AS INT

SET @n = 10
SET @i = 0
SET @count = 0
SET @sum = 0

WHILE @i < @n
BEGIN
    SET @i = @i + 1
    IF (@i % 2 = 0)
    BEGIN
        SET @count = @count + 1
        SET @sum = @sum + @i
    END
END

PRINT @count
PRINT @sum

-- n = 10
-- 2 + 4 + 6 + 8 + 10 = 30