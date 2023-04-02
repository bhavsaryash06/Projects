CREATE DEFINER=`root`@`localhost` PROCEDURE `add_menu_item`(IN item_id INT,IN name VARCHAR(50), IN price DECIMAL(8,2))
BEGIN
    INSERT INTO menu_items (item_id, name, price)
    VALUES (item_id,name, price);
END