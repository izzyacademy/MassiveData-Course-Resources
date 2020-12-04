
USE ecommerce;

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Uniquely identifies the Customer',
  `first_name` varchar(128) NOT NULL DEFAULT '' COMMENT 'First name of the customer',
  `last_name` varchar(128) NOT NULL DEFAULT '' COMMENT 'Last name of the customer',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT 'Email of the customer',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`customer_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store customers';

DROP TABLE IF EXISTS `customer_addresses`;
CREATE TABLE `customer_addresses` (
  `address_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Uniquely identifies the Customer',
  `customer_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Customer Identifier',
  `type` enum('BILLING','SHIPPING','WORK','HOME') NOT NULL DEFAULT 'BILLING' COMMENT 'Address Classification',
  `longitude` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'longitude for the address',
  `latitude` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'latitude for the address',
  `country` char(3) NOT NULL DEFAULT 'USA' COMMENT 'Country of the Customer',
  `street` varchar(128) NOT NULL DEFAULT '' COMMENT 'Street for the Address',
  `street2` varchar(64) NOT NULL DEFAULT '' COMMENT 'Additional Street info for the Address',
  `city` varchar(64) NOT NULL DEFAULT '' COMMENT 'Street for the Address',
  `state` varchar(64) NOT NULL DEFAULT '' COMMENT 'Street for the Address',
  `postalcode` varchar(64) NOT NULL DEFAULT '' COMMENT 'Street for the Address',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store addresses for customers';

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `department_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the dept',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The name of the dept',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to department of products';

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The name of the product',
  `department` int(10) NOT NULL DEFAULT '0' COMMENT 'The department of the product',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`product_id`),
  KEY `dept_idx` (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store name and department of products';

DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details`
(
    `product_id` INT(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
    `long_description` TEXT NOT NULL COMMENT 'Long description',
    `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
    `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
    PRIMARY KEY (`product_id`)
) ENGINE=InnoDB CHARSET=utf8 COMMENT='Used to store detailed information about products';

DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`
(
    `product_id` INT(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
    `sku_id` varchar(16) NOT NULL COMMENT 'SKU identifier',
    `sku_price` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT 'SKU identifier',
    `sku_description` TEXT NOT NULL COMMENT 'SKU Description',
    `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
    `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
    PRIMARY KEY (`sku_id`),
    KEY `product_id` (`product_id`)
) ENGINE=InnoDB CHARSET=utf8 COMMENT='Used to store SKUs of products';

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `supplier_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the supplier',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The name of the supplier',
  `country` char(2) NOT NULL DEFAULT 'US' COMMENT 'The country of the supplier',
  `alive` int(1) NOT NULL DEFAULT '1' COMMENT 'Whether or not the supplier is still in business',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`supplier_id`),
  KEY `ctry_idx` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to suppliers details';

DROP TABLE IF EXISTS `product_suppliers`;
CREATE TABLE `product_suppliers` (
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Identifier for the product',
  `supplier_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Identifier for the Supplier',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT 'Whether or not the supplier is still providing the product',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`product_id`,`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores relationships between products and thier suppliers';


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Uniquely identifies the order',
  `customer_id` int(10) NOT NULL DEFAULT '25', COMMENT 'Identifies the customer that owns the order',
  `status` enum('FULLFILLMENT','SHIPPED','DELIVERED','CANCELLED','REFUNDED') NOT NULL DEFAULT 'FULLFILLMENT' COMMENT 'Order Status',
  `order_source` enum('WEB','MOBILE','PHONE', 'STORE') NOT NULL DEFAULT 'WEB' COMMENT 'Order Source',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`order_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to orders';


DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `order_line_item_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Uniquely identifies the order',
  `item_count` int(10) NOT NULL DEFAULT '1' COMMENT 'Number of items in the order',
  `sku_id` varchar(16) NOT NULL COMMENT 'Product SKU identifier',
  `product_id` int(10) NOT NULL COMMENT 'Product identifier',
  `order_id` int(10) NOT NULL COMMENT 'Order identifier',
  `status` enum('ORDERED','RETURNED') NOT NULL DEFAULT 'ORDERED' COMMENT 'Order Line Item Status',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`order_line_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `sku_id` (`sku_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='products ordered within a specific order';



USE inventory;

DROP TABLE IF EXISTS `product_inventory_levels`;
CREATE TABLE `product_inventory_levels` (
  `sku_id` varchar(16) NOT NULL COMMENT 'Product SKU identifier',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
  `available_count` int(10) NOT NULL DEFAULT '1' COMMENT 'Lowest inventory count that triggers replenishment',
  `date_created` datetime NOT NULL DEFAULT '2020-12-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When this record was last updated',
  PRIMARY KEY (`sku_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the inventory levels for each SKU. This is updated in real time by an external process';

DROP TABLE IF EXISTS `product_inventory_benchmarks`;
CREATE TABLE `product_inventory_benchmarks` (
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
  `sku_id` varchar(16) NOT NULL COMMENT 'Product SKU identifier',
  `low_water_mark_count` int(10) NOT NULL DEFAULT '32' COMMENT 'Lowest inventory count that triggers replenishment',
  `high_water_mark_count` int(10) NOT NULL DEFAULT '512' COMMENT 'Maximum inventory count that stops replenishment',
  `date_created` datetime NOT NULL DEFAULT '2020-12-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When this record was last updated',
  PRIMARY KEY (`sku_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the inventory level benchmarks for replenishment events';


DROP TABLE IF EXISTS `replenishments`;
CREATE TABLE `replenishments` (
  `replenishment_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Record Identifier',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
  `sku_id` varchar(16) NOT NULL COMMENT 'SKU identifier',
  `replenishment_count` int(10) NOT NULL DEFAULT '1' COMMENT 'The number of SKU Items replenished',
  `date_created` datetime NOT NULL DEFAULT '2020-12-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When this record was last updated',
  PRIMARY KEY (`replenishment_id`),
  KEY `product_id` (`product_id`),
  KEY `sku_id` (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the replenishment events';


DROP TABLE IF EXISTS `order_returns`;
CREATE TABLE `order_returns` (
  `return_event_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Record Identifier',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the product',
  `order_line_item_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Uniquely identifies the order line item returned',
  `sku_id` varchar(16) NOT NULL COMMENT 'SKU identifier',
  `return_count` int(10) NOT NULL DEFAULT '0' COMMENT 'Number of items returned',
  `condition` enum('EXCELLENT','DAMAGED') NOT NULL DEFAULT 'EXCELLENT' COMMENT 'The condition` the item was returned',
  `date_created` datetime NOT NULL DEFAULT '2020-12-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When this record was last updated',
  PRIMARY KEY (`return_event_id`),
  KEY `order_line_item_id` (`order_line_item_id`),
  KEY `product_id` (`product_id`),
  KEY `sku_id` (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the order line items returned';
