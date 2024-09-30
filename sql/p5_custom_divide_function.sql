USE hw3;

DROP FUNCTION IF EXISTS divide;

DELIMITER //

CREATE FUNCTION divide(a FLOAT, b FLOAT)
    RETURNS FLOAT
    DETERMINISTIC
    NO SQL
BEGIN
    RETURN a / b;
END;
//

DELIMITER ;

SELECT order_details.*,
       divide(quantity, 2.0) AS divided_quantity
FROM order_details;
