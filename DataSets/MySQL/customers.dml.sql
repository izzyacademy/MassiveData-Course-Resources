
-- 

INSERT INTO `customers` (customer_id, first_name, last_name, email, date_created) VALUES
(599, 'April', 'Smith', 'asmith@example.org', NOW()),
(601, 'James', 'Mathew', 'jmathew@example.org', NOW()),
(607, 'Israel', 'Gonzalez', 'igonzalez@example.org', NOW()),
(613, 'Alex', 'Santiago', 'asantiago@example.org', NOW()),
(617, 'Jane', 'Smith', 'jane.smith@example.org', NOW()),
 
(619, 'Oliver', 'Twist', 'oliver@example.org', NOW()),
(631, 'Olivia', 'Pope', 'o.pope@example.org', NOW()),
(641, 'James', 'Bond', 'james007@example.org', NOW()),
(643, 'Silvia', 'Butriskaya', 'silvia@example.org', NOW()),
(647, 'James', 'England', 'jbritish@example.org', NOW()),
 
(659, 'Maria', 'Cuomo', 'mario.cuomo@example.org', NOW()),
(661, 'John', 'Laudati', 'jlaudati@example.org', NOW()),
(673, 'Alfonso', 'Patel', 'apatel@example.org', NOW()),
(677, 'Elizabeth', 'Zhang', 'liz.zhang@example.org', NOW()),
(683, 'Kofi', 'Obama', 'kobama@example.org', NOW()),
 
(691, 'Kramer', 'Center', 'kcenter@example.org', NOW()),
(701, 'Angel', 'Bravo', 'angel.bravo@example.org', NOW()),
(809, 'Michelle', 'Chanel', 'chanel.michelle@example.org', NOW()),
(811, 'Sabestien', 'Lok', 'lok@example.org', NOW()),
(821, 'Nancy', 'Pettite', 'n.pettite@example.org', NOW());
 
INSERT INTO `customer_addresses` (customer_id, `latitude`, `longitude`,  `country`, `street`, `city`, `state`, `postalcode`, `date_created`) VALUES
(599, 21.3030, -157.8514, 'USA', '818 S King St', 'Honolulu', 'HI', '96813', NOW()),
(601, 21.2892, -157.7933, 'USA', '3919 Sierra Drive', 'Honolulu', 'HI', '96816', NOW()),
(607, 60.9772, -149.4496, 'USA', '3601 C St', 'Anchorage', 'AK', '99503', NOW()),
(613, 61.1897, -149.8302, 'USA', '3416 Seawolf Dr', 'Anchorage', 'AK', '99508', NOW()),
(617, 47.1507, -119.9074, 'USA', '4380 S Macadam Ave', 'Portland', 'OR', '97239', NOW()),
 
(619, 25.7617, 80.1918, 'USA', '98754 Main Street', 'Miami', 'FL', '33179', NOW()),
(631, 34.0522, 118.2437, 'USA', '12345 Garden Avenue', 'Los Angeles', 'CA', '90010', NOW()),
(641, 40.7128, 118.2437, 'USA', '12345 Mountain Circle', 'New York', 'NY', '10010', NOW()),
(643, 47.6062, 122.3321, 'USA', '90915 Main Circle', 'Seattle', 'WA', '98190', NOW()),
(647, 41.8781, 87.6298, 'USA', '8773 Lake Michigan Blvd', 'Chicago', 'IL', '60640', NOW()),

(659, 42.2907, -86.6741, 'USA', '455 N Cityfront Plaza Dr', 'Chicago', 'IL', '60611', NOW()),
(661, 29.7604, 95.3698, 'USA', '10101 Florida Avenue', 'Houston', 'TX', '77010', NOW()),
(673, 24.5549, -81.7511, 'USA', '3491 S Roosevelt Blvd', 'Key West', 'FL', '33040', NOW()),
(677, 30.4957, -86.5493, 'USA', '1701 FL-85', 'Eglin AFB', 'FL', '32542', NOW()),
(683, 30.4383, -84.2815, 'USA', '400 S Monroe St', 'Tallahassee', 'FL', '32399', NOW()),
 
(691, 45.4280, -75.6953, 'CAN', '490 Sussex Dr', 'Ottawa', 'ON', 'K1N 1G8', NOW()),
(701, 43.6521, -79.3555, 'CAN', '2 Eireann Quay', 'Toronto', 'ON', 'M5V 1A1', NOW()),
(809, 49.3697, -123.4888, 'CAN', '1075 W Pender St', 'Vancouver', 'BC', 'V6E 2M6', NOW()),
(811, 51.6524, -101.1408, 'CAN', '2401 Saskatchewan Dr', 'Regina', 'SK', 'S4P 4H8', NOW()),
(821, 46.8115, -71.2504, 'CAN', '500 Grande Allée E', 'Québec', 'QC', 'G1R 2J7', NOW());
  
SELECT * FROM customers;
SELECT * FROM customer_addresses;
  
  
