---

USE inventory;

TRUNCATE TABLE `product_inventory_benchmarks`;

-- Sets the min and max water levels for each SKU to be generated randomly within each range
SET @a=8, @b=16, @c=32, @d=256;

INSERT INTO `product_inventory_benchmarks` (`product_id`, `sku_id`, `low_water_mark_count`, `high_water_mark_count`) VALUES 
(1001, '1001.6IN', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c)),
(1001, '1001.8IN', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c)),
(1002, '1002.6PK', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c)),
(1002, '1002.12PK', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(1003, '1003.6IN', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(1003, '1003.8IN', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(1004, '1004.6PK', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(1004, '1004.12PK', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(1005, '1005.6PK', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(1005, '1005.12PK', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(2001, '2001.0.5G', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(2001, '2001.1.0G', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(2001, '2001.0.5GW', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(2001, '2001.1.0GW', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(3001, '3001.16oz', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(3001, '3001.24oz', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(3001, '3001.60oz', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(3002, '3002.16oz', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(3002, '3002.24oz', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(4001, '4001.SM', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(4001, '4001.MD', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(4001, '4001.LG', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(4002, '4002.SM', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(4002, '4002.MED', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(4002, '4002.LRG', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(5001, '5001.A', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(5001, '5001.B', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(5002, '5002.SM', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(5002, '5002.MD', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(5002, '5002.LG', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) ),
(5002, '5002.XL', (FLOOR(RAND()*(@b-@a+1))+@a), (FLOOR(RAND()*(@d-@c+1))+@c) );
                                                 

TRUNCATE TABLE `product_inventory_levels`;
                                                 
INSERT INTO `product_inventory_levels` (`product_id`, `sku_id`) VALUES
(1001, '1001.6IN'),
(1001, '1001.8IN'),
(1002, '1002.6PK'),
(1002, '1002.12PK'),
(1003, '1003.6IN'),
(1003, '1003.8IN'),
(1004, '1004.6PK'),
(1004, '1004.12PK'),
(1005, '1005.6PK'),
(1005, '1005.12PK'),
(2001, '2001.0.5G'),
(2001, '2001.1.0G'),
(2001, '2001.0.5GW'),
(2001, '2001.1.0GW'),
(3001, '3001.16oz'),
(3001, '3001.24oz'),
(3001, '3001.60oz'),
(3002, '3002.16oz'),
(3002, '3002.24oz'),
(4001, '4001.SM'),
(4001, '4001.MD'),
(4001, '4001.LG'),
(4002, '4002.SM'),
(4002, '4002.MED'),
(4002, '4002.LRG'),
(5001, '5001.A'),
(5001, '5001.B'),
(5002, '5002.SM'),
(5002, '5002.MD'),
(5002, '5002.LG'),
(5002, '5002.XL');

UPDATE product_inventory_levels AS a
INNER JOIN product_inventory_benchmarks AS b ON (a.sku_id = b.sku_id)
SET a.available_count = (FLOOR(RAND()*(b.high_water_mark_count-b.low_water_mark_count+1))+b.low_water_mark_count);                     
                                                 
                                                 
                                                 
