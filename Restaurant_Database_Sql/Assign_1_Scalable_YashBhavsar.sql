CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    date_ordered DATE,
    total_amount DECIMAL(5,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE menu_items (
    item_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(5,2)
);

CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    job_title VARCHAR(50),
    hire_date DATE
);

INSERT INTO menu_items (item_id, name, price) 
VALUES (1, 'Samosa chaat', '6.99'),
(2, 'Dabeli', '6.99'),
(3,'Pani-puri', '6.99'),
(4, 'Dahi Batata Puri', '6.99'),
(5, 'Misal Pav', '6.99'),
(6, 'Pav Bhaji', '7.99'),
(7, 'Aloo papdi Chaat', '6.99'),
(8, 'Ragada patties', '6.99'),
(9, 'Bread Pakoda', '6.99'),
(10,  'Samosa', '1.99'),
(11, 'Cut Mirchi', '6.99'),
(12, 'Khaman Dhokla', '6.99'), 
(13, 'Veg Cutlet', '1.99'),
(14, 'Paneer Cutlet', '1.99'),
(15,'Aloo Puff', '2.99'),
(16,'Paneer Puff', '2.99'),
(17, 'Veg Puff', '2.99');


INSERT INTO employees(employee_id, name, job_title, hire_date)  
VALUES (11, 'Aditya', 'Waiter', '2018-09-10'), 
       (12, 'Kiran', 'Waiter', '2019-09-11'), 
       (13, 'Devika', 'Manager', '2018-09-14'), 
       (14, 'Yash', 'Waiter', '2018-09-16'), 
       (15, 'Lammas', 'chef', '2015-09-14'), 
       (16, 'Abbi', 'Worker', '2015-09-18'), 
       (17, 'Primo', 'Worker', '2015-09-19'), 
       (18, 'Ranjan', 'chef', '2013-09-16'), 
       (19, 'Hansa', 'chef', '2014-09-01');

INSERT INTO customers (customer_id, name, phone)
VALUES (01, 'Aditya', '222333444'), 
     (02, 'Rahul', '223333444'),
(03, 'Kartik', '212333444'),
(04, 'Nikhil', '252333444'),
(05, 'Aryan', '222133444'),
(06, 'Purva', '222933444'),
(07, 'Simran', '227333444'),
(08, 'Moksha', '242333444'),
(09, 'Devika', '222333424'),
(10, 'Yamini', '222333464');

INSERT INTO orders (order_id, customer_id, date_ordered, total_amount )
VALUES (001, 01, '2022-09-01', 7.99), 
(002, 02, '2022-09-02', 8.99), 
(003, 03, '2022-09-02', 72.99), 
(004, 04, '2022-09-03', 18.99), 
(005, 05, '2022-09-03', 17.99), 
(006, 06, '2022-09-03', 2.99), 
(007, 07, '2022-09-04', 9.99), 
(008, 01, '2022-09-04', 25.99), 
(009, 02, '2022-09-04', 42.99), 
(010, 03, '2022-09-04', 1.99), 
(011, 04, '2022-09-04', 2.99), 
(012, 05, '2022-09-05', .99), 
(013, 05, '2022-09-05', 87.99), 
(014, 04, '2022-09-05', 77.99), 
(015, 07, '2022-09-05', 7.99), 
(016, 01, '2022-09-05', 8.99);


INSERT INTO order_items (order_id, item_id, quantity)
VALUES (001, 1, 2),
(002, 1, 10),
(003, 2, 4),
(004, 8, 72),
(005, 1, 7),
(005, 6, 7),
(006, 6, 9),
(007, 7, 7),
(008, 2, 4),
(009, 7, 3),
(010, 9, 1),
(011, 11, 6),
(012, 12, 4),
(013, 7, 3)












