-- test
CREATE OR ALTER PROCEDURE A2
	@ten NVARCHAR(100),
	@loichao NVARCHAR(100) OUTPUT
AS
	SET @loichao = N'Xin chào ' + @ten
GO

DECLARE @ten_inp AS NVARCHAR(100), @loichao_out AS NVARCHAR(100)
SET @ten_inp = N'Nguyễn Văn A'
EXEC A2 @ten=@ten_inp, @loichao=@loichao_out OUTPUT
PRINT @loichao_out



GO
CREATE OR ALTER PROCEDURE A2 @ten NVARCHAR(100)
AS
PRINT N'Xin chào ' + @ten
GO 

DECLARE @ten AS NVARCHAR(100)
EXEC A2 @ten=N'Nguyễn Văn A'
GO


