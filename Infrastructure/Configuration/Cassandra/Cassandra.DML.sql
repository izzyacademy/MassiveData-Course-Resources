
-- Let's try to insert like we would in a regular relation store and see what happens
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email) VALUES
(300, 'Jane', 'Doe', 'jane.doe@example.org'),
(301, 'John', 'Doe', 'john.doe@example.org'),
(450, 'James', 'Smith', 'james@example.org'),
(451, 'Alex', 'Smith', 'alex@example.org'),
(900, 'Jane', 'Smith', 'jane.smith@example.org'),
(915, 'Oliver', 'Twist', 'oliver@example.org');


INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (300, 'Jane', 'Doe', 'jane.doe@example.org', 500, 1, 'USA');
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (301, 'John', 'Doe', 'john.doe@example.org', 300, 1, 'USA');
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (450, 'James', 'Smith', 'james@example.org', 500, 1, 'USA');
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (451, 'Alex', 'Smith', 'alex@example.org', 800, 2, 'VEN');
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (900, 'Jane', 'Smith', 'jane.smith@example.org', 100, 1, 'USA');
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (915, 'Oliver', 'Twist', 'oliver@example.org', 800, 3, 'ZAM');


INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (300, 'Jane', 'Doe', 'jane.doe@example.org', 500, 1, 'USA') IF NOT EXISTS;
INSERT INTO ecommerce.customer_meta (customer_id, first_name, last_name, email, category_id, country_id, country_code) VALUES (300, 'Jane', 'Doe', 'jane.doe@example.org', 500, 1, 'USA');

SELECT * FROM customer_meta;

USE ecommerce;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 1, 'website', 1000, 300.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 2, 'website', 1000, 300.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 2, 'website', 2000, 400.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version, first_name, last_name, email)
VALUES (300, 2, 'website', 3000, 400.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1', 'Jane', 'Doe', 'jane.doe@example.org') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 2, 'website', 3000, 400.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 3, 'andriod', 3000, 400.00, toTimestamp(now()), 1, 'v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 4, 'andriod', 3000, 400.00, toTimestamp(now()), 1, 'v3') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version, first_name, last_name, email)
VALUES (301, 5, 'andriod', 1000, 800.00, toTimestamp(now()), 1, 'v3', 'John', 'Doe', 'john.doe@example.org') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 6, 'andriod', 2000, 800.00, toTimestamp(now()), 1, 'v3') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 7, 'andriod', 4000, 800.00, toTimestamp(now()), 1, 'v3') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, ios_app_id, ios_app_version, first_name, last_name, email)
VALUES (450, 8, 'ios', 3000, 400.00, toTimestamp(now()), 30, 'v7', 'James', 'Smith', 'james@example.org') 
IF NOT EXISTS;

INSERT INTO customer_order_source_tracking (customer_id, order_id, order_source_category, product_id, order_amount, order_created, ios_app_id, ios_app_version, first_name, last_name, email)
VALUES (451, 9, 'ios', 3000, 400.00, toTimestamp(now()), 33, 'v2', 'Alex', 'Smith', 'alex@example.org') 
IF NOT EXISTS;



--- Now, we are going to repeat the same but with the customer_order_source_trackingv2. Pay close attention to the static columns after each INSERT operation

SELECT customer_id, first_name, last_name, email, order_id, order_source_category, product_id, order_amount, order_created 
FROM customer_order_source_trackingv2;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 10, 'website', 1000, 300.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 20, 'website', 1000, 300.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 20, 'website', 2000, 400.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version, first_name, last_name, email)
VALUES (300, 20, 'website', 3000, 400.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1', 'Jane', 'Doe', 'jane.doe@example.org') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, website_id, website_url, browser_version)
VALUES (300, 20, 'website', 5000, 400.00, toTimestamp(now()), 1, 'example.com', 'Google Chrome v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (300, 20, 'andriod', 3000, 400.00, toTimestamp(now()), 1, 'v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (300, 20, 'andriod', 5000, 400.00, toTimestamp(now()), 1, 'v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, ios_app_id, ios_app_version)
VALUES (300, 21, 'ios', 3000, 400.00, toTimestamp(now()), 30, 'v7') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, ios_app_id, ios_app_version)
VALUES (300, 21, 'ios', 5000, 400.00, toTimestamp(now()), 30, 'v7') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 30, 'andriod', 3000, 400.00, toTimestamp(now()), 1, 'v1') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 40, 'andriod', 3000, 400.00, toTimestamp(now()), 1, 'v3') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version, first_name, last_name, email)
VALUES (301, 50, 'andriod', 1000, 800.00, toTimestamp(now()), 1, 'v3', 'John', 'Doe', 'john.doe@example.org') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 60, 'andriod', 2000, 800.00, toTimestamp(now()), 1, 'v3') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, andriod_app_id, andriod_app_version)
VALUES (301, 70, 'andriod', 4000, 800.00, toTimestamp(now()), 1, 'v3') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, ios_app_id, ios_app_version, first_name, last_name, email)
VALUES (450, 80, 'ios', 3000, 400.00, toTimestamp(now()), 30, 'v7', 'James', 'Smith', 'james@example.org') 
IF NOT EXISTS;

INSERT INTO customer_order_source_trackingv2 (customer_id, order_id, order_source_category, product_id, order_amount, order_created, ios_app_id, ios_app_version, first_name, last_name, email)
VALUES (451, 90, 'ios', 3000, 400.00, toTimestamp(now()), 33, 'v2', 'Alex', 'Smith', 'alex@example.org') 
IF NOT EXISTS;

SELECT customer_id, order_id, order_source_category, product_id, first_name, last_name, email, order_amount, order_created 
FROM customer_order_source_trackingv2;

SELECT customer_id, order_id, order_source_category, product_id, first_name, last_name, email, order_amount, order_created 
FROM customer_order_source_trackingv2
WHERE customer_id = 300;

SELECT customer_id, order_id, order_source_category, product_id, first_name, last_name, email, order_amount, order_created 
FROM customer_order_source_trackingv2
WHERE customer_id = 300 AND order_id > 0
ALLOW FILTERING;

SELECT customer_id, order_id, order_source_category, product_id, first_name, last_name, email, order_amount, order_created 
FROM customer_order_source_trackingv2
WHERE customer_id = 300 AND order_id = 20
ORDER BY order_source_category ASC;