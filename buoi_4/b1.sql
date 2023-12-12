CREATE OR ALTER TRIGGER B1
ON CAUTHU
INSTEAD OF INSERT
AS
BEGIN
    -- SELECT *
    -- FROM inserted

    IF EXISTS (
        SELECT *
        FROM inserted
        WHERE VITRI NOT IN (N'Thủ môn', N'Tiền đạo', N'Tiền vệ', N'Trung vệ', N'Hậu vệ')
    )
    BEGIN
        RAISERROR(N'Vị trí không hợp lệ', 16, 0)
        ROLLBACK
        RETURN
    END

    INSERT INTO CAUTHU (HOTEN, VITRI, NGAYSINH, DIACHI, MACLB, MAQG, SO)
    SELECT HOTEN, VITRI, NGAYSINH, DIACHI, MACLB, MAQG, SO
    FROM inserted
END
GO


-- test 
INSERT INTO CAUTHU
VALUES (N'Nguyễn Văn A Test', N'Tiền đạo', '8/14/2000', NULL, 'HAGL', 'VN', 6)

DELETE FROM CAUTHU
WHERE HOTEN = N'Nguyễn Văn A Test'

-- error here
INSERT INTO CAUTHU
VALUES (N'Nguyễn Văn A Test', N'Dự bị', '8/14/2000', NULL, 'HAGL', 'VN', 6) 


-- delete trigger
GO
DROP TRIGGER B1
GO