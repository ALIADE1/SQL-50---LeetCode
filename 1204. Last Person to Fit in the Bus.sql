# Write your MySQL query statement below
SELECT Q1.person_name
FROM Queue Q1
WHERE (
    SELECT SUM(Q2.weight)
    FROM Queue Q2
    WHERE Q2.turn <= Q1.turn
) <= 1000
ORDER BY Q1.turn DESC
LIMIT 1;
