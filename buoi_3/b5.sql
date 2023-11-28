-- altering the existing table or create a view should be faster

WITH TRANDAUNHAKHACH (MACLBNHA, MACLBKHACH) AS (
    SELECT MACLB1, MACLB2
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB1
    )
    UNION
    SELECT MACLB2, MACLB1
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB2
    )
)

SELECT MACLB, TENCLB
FROM CAULACBO
WHERE MACLB IN (
    SELECT MACLBNHA
    FROM TRANDAUNHAKHACH
    GROUP BY MACLBNHA
    HAVING COUNT(DISTINCT MACLBKHACH) = (
        SELECT COUNT(DISTINCT MACLB) FROM CAULACBO) - 1
);

-- test
WITH TRANDAUNHAKHACH (MACLBNHA, MACLBKHACH) AS (
    SELECT MACLB1, MACLB2
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB1
    )
    UNION
    SELECT MACLB2, MACLB1
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB2
    )
)

SELECT MACLBNHA, COUNT(DISTINCT MACLBKHACH) AS SOCLBKHACHDISTINCT
FROM TRANDAUNHAKHACH
GROUP BY MACLBNHA;


WITH TRANDAUNHAKHACH (MACLBNHA, MACLBKHACH) AS (
    SELECT MACLB1, MACLB2
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB1
    )
    UNION
    SELECT MACLB2, MACLB1
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB2
    )
),
TESTCAULACBO AS (
    SELECT *
    FROM CAULACBO
    WHERE MACLB IN ('KKH', 'GDT', 'BBD', 'TPY')
)

SELECT MACLB, TENCLB
FROM TESTCAULACBO
WHERE MACLB IN (
    SELECT MACLBNHA
    FROM TRANDAUNHAKHACH
    GROUP BY MACLBNHA
    HAVING COUNT(DISTINCT MACLBKHACH) = (
        SELECT COUNT(DISTINCT MACLB) FROM TESTCAULACBO) - 1
);


WITH TRANDAUNHAKHACH (MACLBNHA, MACLBKHACH) AS (
    SELECT MACLB1, MACLB2
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB1
    )
    UNION
    SELECT MACLB2, MACLB1
    FROM TRANDAU
    WHERE MASAN IN (
        SELECT MASAN
        FROM CAULACBO
        WHERE MACLB = MACLB2
    )
),
TESTCAULACBO AS (
    SELECT *
    FROM CAULACBO
    WHERE MACLB IN ('KKH', 'GDT', 'BBD', 'TPY', 'SDN')
)

SELECT MACLB, TENCLB
FROM TESTCAULACBO
WHERE MACLB IN (
    SELECT MACLBNHA
    FROM TRANDAUNHAKHACH
    GROUP BY MACLBNHA
    HAVING COUNT(DISTINCT MACLBKHACH) = (
        SELECT COUNT(DISTINCT MACLB) FROM TESTCAULACBO) - 1
);