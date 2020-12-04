---

USE inventory;

-- Sets the min and max water levels for each SKU to be generated randomly within each range
SET @a=32, @b=64, @c=512, @d=1024;

TRUNCATE TABLE `product_inventory_benchmarks`;

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
                                                 
                                                 
