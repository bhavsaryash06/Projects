CREATE DEFINER=`root`@`localhost` FUNCTION `get_order_total`(order_id INT) RETURNS decimal(8,2)
    DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(8,2);
    SELECT SUM(quantity * price) INTO total
    FROM order_items
    INNER JOIN menu_items ON order_items.item_id = menu_items.item_id
    WHERE order_items.order_id = order_id;
    RETURN total;
END