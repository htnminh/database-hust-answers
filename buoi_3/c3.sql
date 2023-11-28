-- giả sử tuổi tính theo năm, bỏ qua ngày tháng

ALTER TABLE CAUTHU
DROP CONSTRAINT IF EXISTS TUOICONSTRAINT

ALTER TABLE CAUTHU
ADD CONSTRAINT TUOICONSTRAINT CHECK (
    YEAR(GETDATE()) - YEAR(NGAYSINH) >= 18
)

-- test: hiện error = đúng
-- The INSERT statement conflicted with the CHECK constraint "TUOICONSTRAINT". The conflict occurred in database "QLBongDa", table "dbo.CAUTHU", column 'NGAYSINH'.
INSERT INTO CAUTHU
VALUES (N'Tên CT', N'Trung vệ', '12/31/2009', NULL, 'BBD', 'VN', 10)