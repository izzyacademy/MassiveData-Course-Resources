
/**

# Get the current status of the Cassandra Deployment and Pods
kubectl -n cassandra get deployments
kubectl -n cassandra get pods

# Get into the pod of one of the Cassandra nodes
kubectl -n cassandra exec deploy/cassandra1 -it -- bash

# Get the status and information about the cluster
nodetool status
nodetool info


# Open up the Cassandra Query Language (CQL) Shell (cqlsh) and you can now execute the DDL and DML statements
cqlsh

**/


DESCRIBE KEYSPACES;

CREATE KEYSPACE ecommerce WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy'};

CREATE  KEYSPACE IF NOT EXISTS ecommerce
WITH REPLICATION = {
   'class' : 'NetworkTopologyStrategy', 
   'kubecontrol' : 3 -- replication factor for data center (kubecontrol). DC names are case-sensitive
} 
AND DURABLE_WRITES =  true;

USE ecommerce;


DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
) WITH comment='Used to store customer meta data. Single partition key with no clustering';

DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    PRIMARY KEY (customer_id)
) WITH comment='Used to store customer meta data. Single partition key with no clustering';

DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    PRIMARY KEY (customer_id, category_id)
) WITH comment='Used to store customer meta data using category_id as the clustering column';

DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    country_id TEXT,
    PRIMARY KEY (customer_id, category_id, country_id)
) WITH comment='Used to store customer meta data using category_id and country_id as the clustering columns';


DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    country_id INT,
    PRIMARY KEY (customer_id, country_id, category_id)
) WITH CLUSTERING ORDER BY (country_id ASC, category_id DESC) 
AND comment='using customer_id as partition key and country_id and category_id as clustering columns with custom ordering/sorting';


DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    country_id INT,
    PRIMARY KEY (customer_id, country_id, category_id)
) WITH CLUSTERING ORDER BY (country_id ASC, category_id DESC) 
AND comment='using customer_id as partition key and country_id and category_id as clustering columns with custom ordering/sorting';

DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    country_id INT,
    PRIMARY KEY ((customer_id, country_id), category_id)
) WITH CLUSTERING ORDER BY (category_id DESC) 
AND comment='using customer_id and country_id as partition key with category_id as clustering column with custom ordering/sorting';

DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    country_id INT,
    PRIMARY KEY (customer_id, country_id, category_id)
) WITH CLUSTERING ORDER BY (country_id ASC, category_id DESC) 
AND comment='Used to store customer meta data using category_id and country_id as the clustering columns';

DROP TABLE IF EXISTS ecommerce.customer_meta;

CREATE TABLE customer_meta
(
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    category_id INT,
    country_id INT,
    country_code VARCHAR,
    PRIMARY KEY (customer_id, country_id, category_id)
) WITH CLUSTERING ORDER BY (country_id DESC, category_id ASC) 
AND comment='Used to store customer meta data using category_id and country_id as the clustering columns';

DROP TABLE IF EXISTS ecommerce.customer_order_source_tracking;

CREATE TABLE customer_order_source_tracking
(
    customer_id INT,
    order_id INT,
    order_source_category TEXT, -- website, andriod, ios
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    product_id INT,
    order_amount FLOAT,
    order_created TIMESTAMP,

    -- metadata only relevant to website orders
    website_id INT,
    website_url TEXT,
    browser_version TEXT,

    -- metadata only relevant to andriod orders
    andriod_app_id INT,
    andriod_app_version TEXT,

    -- metadata only relevant to andriod orders
    ios_app_id INT,
    ios_app_version TEXT,

    PRIMARY KEY ((customer_id, order_id), order_source_category, product_id)
) WITH comment='Used to keep track the specific source of orders and products placed by a customer';


DROP TABLE IF EXISTS ecommerce.customer_order_source_trackingv2;

-- Uses some static columns
CREATE TABLE customer_order_source_trackingv2
(
    customer_id INT,
    order_id INT,
    order_source_category TEXT, -- website, andriod, ios
    first_name TEXT STATIC,
    last_name TEXT STATIC,
    email TEXT STATIC,
    product_id INT,
    order_amount FLOAT,
    order_created TIMESTAMP,

    -- metadata only relevant to website orders
    website_id INT,
    website_url TEXT,
    browser_version TEXT,

    -- metadata only relevant to andriod orders
    andriod_app_id INT,
    andriod_app_version TEXT,

    -- metadata only relevant to andriod orders
    ios_app_id INT,
    ios_app_version TEXT,

    PRIMARY KEY ((customer_id, order_id), order_source_category, product_id)
) WITH comment='Used to keep track the specific source of orders and products placed by a customer. Uses static columns';
