ALTER TABLE CAUTHU
DROP CONSTRAINT IF EXISTS VITRICONSTRAINT

ALTER TABLE CAUTHU
ADD CONSTRAINT VITRICONSTRAINT CHECK (
    VITRI IN (N'Thủ môn', N'Tiền đạo', N'Tiền vệ', N'Trung vệ', N'Hậu vệ')
)

-- test: hiện error = đúng
-- The INSERT statement conflicted with the CHECK constraint "VITRICONSTRAINT". The conflict occurred in database "QLBongDa", table "dbo.CAUTHU", column 'VITRI'.
INSERT INTO CAUTHU
VALUES (N'Tên CT', N'Dự bị', '12/31/1990', NULL, 'BBD', 'VN', 10)