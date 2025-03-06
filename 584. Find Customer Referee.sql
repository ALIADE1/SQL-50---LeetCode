# Write your MySQL query statement below
SELECT name 
FROM Customer
WHERE REFEREE_ID != 2 OR REFEREE_ID IS NULL;
