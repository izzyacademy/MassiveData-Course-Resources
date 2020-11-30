
USE ecommerce;

INSERT INTO departments (`department_id`, `name`) VALUES
(1, 'Bakery'),
(2, 'Dairy'),
(3, 'Produce'),
(4, 'Meat'),
(5, 'Seafood');

INSERT INTO products (`department`, `product_id`, `name`) VALUES
(1, 1001, 'Butter Bread'),
(1, 1002, 'Butter Croissant'),
(1, 1003, 'Banana Bread'),
(1, 1004, 'Apple Pie'),
(1, 1005, 'Blueberry Muffin'),
(2, 2001, 'Almond Milk'),
(2, 2002, 'Whole Milk'),
(3, 3001, 'Carrots'),
(3, 3002, 'Tangerine'),
(4, 4001, 'Chicken Drumsticks'),
(4, 4002, 'Grass-fed Beef'),
(5, 5001, 'Atlantic Salmon'),
(5, 5002, 'Pacific Shrimp');

INSERT INTO product_details (`product_id`, `long_description`) VALUES
(1001, 'Butter Bread description'),
(1002, 'Butter Croissant description'),
(1003, 'Banana Bread description'),
(1004, 'Apple Pie description'),
(1005, 'Blueberry Muffin description'),
(2001, 'Almond Milk description'),
(2002, 'Whole Milk description'),
(3001, 'Carrots description'),
(3002, 'Tangerine description'),
(4001, 'Chicken Drumsticks description'),
(4002, 'Grass-fed Beef description'),
(5001, 'Atlantic Salmon description'),
(5002, 'Pacific Shrimp description');


INSERT INTO product_skus (`product_id`, `sku_id`, `sku_price`, `sku_description`) VALUES
(1001, '1001.6IN', 1.00, '6 inch'),
(1001, '1001.8IN', 1.00, '8 inch'),
(1002, '1002.6PK', 2.00, '4 pack'),
(1002, '1002.12PK', 3.00, 'dozen'),
(1003, '1003.6IN', 5.00, '6 inch'),
(1003, '1003.8IN', 6.00, '8 inch'),
(1004, '1004.6PK', 2.00, '4 pack'),
(1004, '1004.12PK', 3.00, 'dozen'),
(1005, '1005.6PK', 2.00, '4 pack'),
(1005, '1005.12PK', 3.00, 'dozen'),
(2001, '2001.0.5G', 2.00, 'Half Gallon'),
(2001, '2001.1.0G', 3.00, '1 Gallon'),
(2001, '2001.0.5GW', 2.00, 'Half Gallon'),
(2001, '2001.1.0GW', 3.00, '1 Gallon'),
(3001, '3001.16oz', 1.00, 'Small'),
(3001, '3001.24oz', 1.50, 'Medium'),
(3001, '3001.60oz', 2.80, 'Large'),
(3002, '3002.16oz', 1.00, 'Small'),
(3002, '3002.24oz', 1.50, 'Large'),
(4001, '4001.SM', 10.00, 'Small 5lbs bag'),
(4001, '4001.MD', 10.00, 'Medium 10lbs bag'),
(4001, '4001.LG', 10.00, 'Large 50lbs bag'),
(4002, '4002.SM', 10.00, 'Small 1kg'),
(4002, '4002.MED', 10.00, 'Medium 4kg bag'),
(4002, '4002.LRG', 10.00, 'Large 15kg bag'),
(5001, '5001.A', 15.00, 'Small'),
(5001, '5001.B', 50.00, 'Large'),
(5002, '5002.SM', 5.00, 'Small Shrimp 100 count'),
(5002, '5002.MD', 7.00, 'Medium Shrimp 75 count'),
(5002, '5002.LG', 8.00, 'Large Shrimp 30 count'),
(5002, '5002.XL', 9.00, 'Small Shrimp 10 count');


INSERT INTO suppliers (`supplier_id`, `name`, `country`) VALUES
(1, 'Lok Brothers International', 'US'),
(2, 'Santiago Fresh Produce', 'MX'),
(3, 'Davis Seafood', 'CA'),
(4, 'American Seafood', 'US'),
(5, 'Amanda Bakeries', 'US'),
(6, 'Texas Beef & Poultry', 'US');


INSERT INTO product_suppliers (`product_id`, `supplier_id`) VALUES
(1001, 1),
(1002, 1),
(1003, 1),
(1004, 1),
(1005, 1),
(1004, 5),
(1005, 5),
(2001, 1),
(2002, 1),
(3001, 1),
(3002, 1),
(3001, 2),
(3002, 2),
(4001, 1),
(4002, 1),
(4001, 6),
(4002, 6),
(5001, 1),
(5002, 1),
(5001, 3),
(5002, 3),
(5001, 4),
(5002, 4);

INSERT INTO orders (order_id, date_created) VALUES
(1000, '2020-11-01 20:00:00'),
(1001, '2020-11-01 20:00:00'),
(1002, '2020-11-02 10:00:00'),
(1003, '2020-11-02 10:00:00'),
(1004, '2020-11-03 20:00:00'),
(1005, '2020-11-03 20:30:00'),
(1006, '2020-11-04 10:00:00'),
(1007, '2020-11-04 15:00:00'),
(1008, '2020-11-05 08:00:00'),
(1009, '2020-11-06 11:00:00'),
(1010, '2020-11-08 11:00:00'),
(1011, '2020-11-08 22:00:00'),
(1012, '2020-11-08 23:00:00');


INSERT INTO order_items (order_id, sku_id, item_count, date_created) VALUES
(1000, '1001.6IN', 10, NOW()),
(1000, '3001.60oz', 8, NOW()),
(1001, '4001.SM', 1, NOW()),
(1001, '5001.A', 25, NOW()),
(1002, '5001.A', 7, NOW()),
(1002, '3002.16oz', 4, NOW()),
(1003, '5002.XL', 9, NOW()),
(1004, '1001.6IN', 1, NOW()),
(1005, '5002.XL', 15, NOW()),
(1006, '3002.16oz', 23, NOW()),
(1007, '1001.6IN', 60, NOW()),
(1008, '5002.XL', 1, NOW()),
(1009, '4002.MED', 1, NOW()),
(1010, '1001.6IN', 2, NOW()),
(1011, '4002.MED', 5, NOW()),
(1012, '2001.0.5G', 8, NOW());

 /**
 INSERT INTO product_skus (`product_id`, `sku_id`, `sku_price`, `sku_description`) VALUES
(1001, '1001.6IN', 1.00, '6 inch'),
(1001, '1001.8IN', 1.00, '8 inch'),
(1002, '1002.6PK', 2.00, '4 pack'),
(1002, '1002.12PK', 3.00, 'dozen'),
(1003, '1003.6IN', 5.00, '6 inch'),
(1003, '1003.8IN', 6.00, '8 inch'),
(1004, '1004.6PK', 2.00, '4 pack'),
(1004, '1004.12PK', 3.00, 'dozen'),
(1005, '1005.6PK', 2.00, '4 pack'),
(1005, '1005.12PK', 3.00, 'dozen'),
(2001, '2001.0.5G', 2.00, 'Half Gallon'),
(2001, '2001.1.0G', 3.00, '1 Gallon'),
(2001, '2001.0.5GW', 2.00, 'Half Gallon'),
(2001, '2001.1.0GW', 3.00, '1 Gallon'),
(3001, '3001.16oz', 1.00, 'Small'),
(3001, '3001.24oz', 1.50, 'Medium'),
(3001, '3001.60oz', 2.80, 'Large'),
(3002, '3002.16oz', 1.00, 'Small'),
(3002, '3002.24oz', 1.50, 'Large'),
(4001, '4001.SM', 10.00, 'Small 5lbs bag'),
(4001, '4001.MD', 10.00, 'Medium 10lbs bag'),
(4001, '4001.LG', 10.00, 'Large 50lbs bag'),
(4002, '4002.SM', 10.00, 'Small 1kg'),
(4002, '4002.MED', 10.00, 'Medium 4kg bag'),
(4002, '4002.LRG', 10.00, 'Large 15kg bag'),
(5001, '5001.A', 15.00, 'Small'),
(5001, '5001.B', 50.00, 'Large'),
(5002, '5002.SM', 5.00, 'Small Shrimp 100 count'),
(5002, '5002.MD', 7.00, 'Medium Shrimp 75 count'),
(5002, '5002.LG', 8.00, 'Large Shrimp 30 count'),
(5002, '5002.XL', 9.00, 'Small Shrimp 10 count');
 **/
 

 
 SELECT p.product_id, SUBSTRING(o.date_created, 1, 10) AS order_date, (ps.sku_price * oi.item_count) AS order_amount
 FROM products AS p
 INNER JOIN product_skus AS ps ON (p.product_id = ps.product_id)
 INNER JOIN order_items AS oi ON (oi.sku_id = ps.sku_id)
 INNER JOIN orders AS o ON (o.order_id = oi.order_id)
 WHERE SUBSTRING(o.date_created, 1, 10) = '2020-11-01';
 
 SELECT SUBSTRING(o.date_created, 1, 10) AS order_date, SUM(ps.sku_price * oi.item_count) AS order_total
 FROM products AS p
 INNER JOIN product_skus AS ps ON (p.product_id = ps.product_id)
 INNER JOIN order_items AS oi ON (oi.sku_id = ps.sku_id)
 INNER JOIN orders AS o ON (o.order_id = oi.order_id)
 GROUP BY order_date 
 ORDER BY order_date ASC;
 
 SELECT p.product_id, SUM(ps.sku_price * oi.item_count) AS order_total
 FROM products AS p
 INNER JOIN product_skus AS ps ON (p.product_id = ps.product_id)
 INNER JOIN order_items AS oi ON (oi.sku_id = ps.sku_id)
 INNER JOIN orders AS o ON (o.order_id = oi.order_id)
 WHERE SUBSTRING(o.date_created, 1, 10) = '2020-11-01'
 GROUP BY p.product_id 
 ORDER BY p.product_id ASC;
 
 SELECT d.name AS department, SUM(ps.sku_price * oi.item_count) AS order_total
 FROM products AS p
 INNER JOIN product_skus AS ps ON (p.product_id = ps.product_id)
 INNER JOIN departments AS d ON (d.department_id = p.department)
 INNER JOIN order_items AS oi ON (oi.sku_id = ps.sku_id)
 INNER JOIN orders AS o ON (o.order_id = oi.order_id)
 WHERE SUBSTRING(o.date_created, 1, 10) = '2020-11-01'
 GROUP BY d.department_id 
 ORDER BY d.department_id ASC;
 
 -- Show the products with the MAX order amount for each date
 SELECT SUBSTRING(o.date_created, 1, 10) AS sales_date, p.product_id, p.name, MAX(ps.sku_price * oi.item_count) AS max_order_amount
 FROM products AS p
 INNER JOIN product_skus AS ps ON (p.product_id = ps.product_id)
 INNER JOIN order_items AS oi ON (oi.sku_id = ps.sku_id)
 INNER JOIN orders AS o ON (o.order_id = oi.order_id)
 GROUP BY sales_date;
 
