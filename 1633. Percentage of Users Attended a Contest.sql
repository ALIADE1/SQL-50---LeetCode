# Write your MySQL query statement below
SELECT R.contest_id,
ROUND((COUNT(R.user_id) / (SELECT COUNT(*) FROM Users)) * 100,2) AS percentage
FROM Register R
GROUP BY contest_id
ORDER BY percentage DESC, R.contest_id;
