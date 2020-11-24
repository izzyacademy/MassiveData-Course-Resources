
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