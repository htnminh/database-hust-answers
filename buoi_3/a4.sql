SELECT MAHLV, TENHLV, NGAYSINH, DIACHI
FROM HUANLUYENVIEN
WHERE MAQG IN (
    SELECT MAQG
    FROM QUOCGIA
    WHERE TENQG=N'Việt Nam'
) AND YEAR(GETDATE()) - YEAR(NGAYSINH) BETWEEN 35 AND 40

-- test
SELECT MAHLV, TENHLV, NGAYSINH, DIACHI,
    YEAR(GETDATE()) - YEAR(NGAYSINH) AS TUOI
FROM HUANLUYENVIEN
WHERE MAQG IN (
    SELECT MAQG
    FROM QUOCGIA
    WHERE TENQG=N'Việt Nam'
)

SELECT MAHLV, TENHLV, NGAYSINH, DIACHI
FROM HUANLUYENVIEN
WHERE MAQG IN (
    SELECT MAQG
    FROM QUOCGIA
    WHERE TENQG=N'Việt Nam'
) AND YEAR(GETDATE()) - YEAR(NGAYSINH) BETWEEN 50 AND 55