-- 코드를 작성해주세요
SELECT p.ID, COUNT(c.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA p LEFT OUTER JOIN ECOLI_DATA c ON p.ID=c.PARENT_ID
GROUP BY p.ID
ORDER BY p.ID;
