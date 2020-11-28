
USE ecommerce;

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
    PRIMARY KEY (`product_id`, `sku_id`),
  KEY `sku_id` (`sku_id`)
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
  `status` enum('FULLFILLMENT','SHIPPED','DELIVERED','CANCELLED','REFUNDED') NOT NULL DEFAULT 'FULLFILLMENT' COMMENT 'Order Status',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`order_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to orders';


DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `item_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Uniquely identifies the order',
  `item_count` int(10) NOT NULL DEFAULT '1' COMMENT 'Number of items in the order',
  `sku_id` varchar(16) NOT NULL COMMENT 'SKU identifier',
  `order_id` int(10) NOT NULL COMMENT 'Order identifier',
  `date_created` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this record was created',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`item_id`),
  KEY `sku_id` (`sku_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='products ordered within a specific order';


DROP TABLE IF EXISTS `user_activities`;
CREATE TABLE `user_activities` (
  `activity_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Uniquely identifies the order',
  `user_id` int(10) NOT NULL DEFAULT '1' COMMENT 'Id of the User',
  `page_id` varchar(16) NOT NULL COMMENT 'SKU identifier',
  `activity_time` DATETIME NOT NULL DEFAULT '2020-01-01 16:00:00' COMMENT 'When this activity occurred',
  `date_modified` TIMESTAMP NOT NULL COMMENT 'When this record was last updated',
  PRIMARY KEY (`activity_id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to track user activities';

