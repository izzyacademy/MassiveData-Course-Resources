
-- 

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



INSERT INTO `customers` (customer_id, first_name, last_name, email, date_created) VALUES
(300, 'Jane', 'Doe', 'jane.doe@example.org', NOW()),
(301, 'John', 'Doe', 'john.doe@example.org', NOW()),
(450, 'James', 'Smith', 'james@example.org', NOW()),
(451, 'Alex', 'Smith', 'alex@example.org', NOW()),
(900, 'Jane', 'Smith', 'jane.smith@example.org', NOW()),
(915, 'Oliver', 'Twist', 'oliver@example.org', NOW());
 
SELECT * FROM customers;
 
INSERT INTO `customer_addresses` (customer_id, `latitude`, `longitude`,  `country`, `street`, `city`, `state`, `postalcode`, `date_created`) VALUES
(300, 25.7617, 80.1918, 'USA', '98754 Main Street', 'Miami', 'FL', '33179', NOW()),
(301, 34.0522, 118.2437, 'USA', '12345 Garden Avenue', 'Los Angeles', 'CA', '90010', NOW()),
(450, 40.7128, 118.2437, 'USA', '12345 Garden Circle', 'New York', 'NY', '10010', NOW()),
(451, 47.6062, 122.3321, 'USA', '90915 Main Circle', 'Seattle', 'WA', '98190', NOW()),
(900, 41.8781, 87.6298, 'USA', '8773 Lake Michigan Blvd', 'Chicago', 'IL', '60640', NOW()),
(915, 29.7604, 95.3698, 'USA', '10101 Florida Avenue', 'Houston', 'TX', '77010', NOW());
  
SELECT * FROM customer_addresses;
  
  
