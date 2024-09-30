USE hw3;

WITH temp AS (SELECT *
              FROM order_details
              WHERE quantity > 10)
SELECT temp.order_id,
       ROUND(AVG(temp.quantity)) AS avg_quantity
FROM temp
GROUP BY temp.order_id;
