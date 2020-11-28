
-- Log into the remote container
-- kubectl -n mysql56 exec deploy/mysql -it -- bash

-- Connect to the database server locally
-- mysql -u root -pA8B4CD3F

-- Select the MySQL database
USE mysql;

-- Take a look at all the current users
SELECT User,Host,Password FROM mysql.user;

-- Create a new root user and grant permissions to all resources
CREATE USER 'root'@'localhost' IDENTIFIED BY 'db3k4Cc';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';

-- Remove all unsafe user accounts
DELETE FROM mysql.user WHERE LENGTH(User) = 0 OR LENGTH(Password) = 0;

-- Set up the practice database and create the user for it
CREATE DATABASE production DEFAULT CHARACTER SET utf8;

CREATE USER 'dbpractice'@'%' IDENTIFIED BY 'db3k4Cc';

GRANT ALL PRIVILEGES ON production.* TO 'dbpractice'@'%';

FLUSH PRIVILEGES;



--- Set up Database for storing application data

CREATE DATABASE production DEFAULT CHARACTER SET utf8;

--- Set up Debezium Connector User

CREATE USER 'debezium'@'%' IDENTIFIED BY 'db3k4Cc';

GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'debezium'@'%' IDENTIFIED BY 'db3k4Cc';

FLUSH PRIVILEGES;

