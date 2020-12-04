
-- 

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
  
  
