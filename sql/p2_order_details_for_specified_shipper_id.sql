USE hw3;

SELECT *
FROM order_details
WHERE (SELECT shipper_id FROM orders WHERE orders.id = order_details.order_id) = 3;
