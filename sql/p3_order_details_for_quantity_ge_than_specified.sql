USE hw3;

SELECT sub.order_id,
       ROUND(AVG(sub.quantity)) AS avg_quantity
FROM (SELECT * FROM order_details WHERE quantity > 10) AS sub
GROUP BY sub.order_id;
