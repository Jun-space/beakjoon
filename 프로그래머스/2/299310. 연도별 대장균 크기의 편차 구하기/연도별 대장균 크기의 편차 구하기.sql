WITH MAX_COLONY_DATA AS (
    SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAX_COLONY
    FROM ECOLI_DATA
    GROUP BY YEAR(DIFFERENTIATION_DATE)
)
SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX_COLONY - SIZE_OF_COLONY AS YEAR_DEV, ID
FROM ECOLI_DATA, MAX_COLONY_DATA
WHERE YEAR(ECOLI_DATA.DIFFERENTIATION_DATE) = MAX_COLONY_DATA.YEAR
ORDER BY YEAR, YEAR_DEV;
