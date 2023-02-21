CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `order_details` AS
    SELECT 
        `orders`.`order_id` AS `order_id`,
        `customers`.`name` AS `customer_name`,
        `orders`.`date_ordered` AS `date_ordered`,
        `orders`.`total_amount` AS `total_amount`,
        `menu_items`.`name` AS `item_name`,
        `order_items`.`quantity` AS `quantity`,
        `menu_items`.`price` AS `price`
    FROM
        (((`orders`
        JOIN `customers` ON ((`orders`.`customer_id` = `customers`.`customer_id`)))
        JOIN `order_items` ON ((`orders`.`order_id` = `order_items`.`order_id`)))
        JOIN `menu_items` ON ((`order_items`.`item_id` = `menu_items`.`item_id`)))