ALTER TABLE HLV_CLB
DROP CONSTRAINT IF EXISTS VAITROCONSTRAINT

ALTER TABLE HLV_CLB
ADD CONSTRAINT VAITROCONSTRAINT CHECK (
    VAITRO IN (N'HLV Chính', N'HLV phụ', N'HLV thể lực', N'HLV thủ môn')
)

-- test: hiện error = đúng
-- The INSERT statement conflicted with the CHECK constraint "VAITROCONSTRAINT". The conflict occurred in database "QLBongDa", table "dbo.HLV_CLB", column 'VAITRO'.
INSERT INTO HLV_CLB
VALUES (N'HLV07', 'HAGL', N'HLV tâm lý')