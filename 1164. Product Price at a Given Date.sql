# Write your MySQL query statement below
SELECT product_id,
    COALESCE(
        (SELECT new_price
            FROM Products 
            WHERE product_id = P.product_id
            AND change_date <='2019-08-16' ORDER BY change_date DESC 
            LIMIT 1), 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) P;
