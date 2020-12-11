# Course-Resources

This github repository contains Course Resources and Instructions for Setup, Configuration and Deployment. This is the primary repository for the course.

There are also other repositories containing source code, scripts, installation and configuration instructions to accompany the course.

I will share the links below to those repositories:


## Additional Resources and Repositories

- [Infrastructure Setup Resources](https://github.com/izzyacademy/MassiveData-Course-Resources/tree/main/Infrastructure)
- [Data Sets](https://github.com/izzyacademy/MassiveData-Course-Resources/tree/main/DataSets)
- [Tools and Integrated Development Environment Setup](https://github.com/izzyacademy/MassiveData-Course-Resources/tree/main/Notes)
- [Postman Collections](https://github.com/izzyacademy/MassiveData-Course-Resources/tree/main/Postman)
- [Local DNS and Environment Variables](https://github.com/izzyacademy/MassiveData-Course-Resources/tree/main/Scripts)
- [Data Generators](https://github.com/izzyacademy/DataGenerators)
- [Apache Spark Data Batch Analysis](https://github.com/izzyacademy/SparkAnalysis)
- [Kafka Streams Real Time Streams Data Analysis](https://github.com/izzyacademy/KafkaStreams)
- [KSQL Data Analysis](https://github.com/izzyacademy/KSQL-Realtime-Streams)
- [Sales Data Web REST API](https://github.com/izzyacademy/SalesAPI)
- [Angular App for D3.js Visualization](https://github.com/izzyacademy/SalesWebApp)

### Infrastructure, Data Sets, Tools, Postman Collections and Local DNS
In this current repository, there are instructions for configuring the environment, loading up the sample datasets, installing your IDE, sample Postman collections for interacting with REST endpoints and a utility script for configuring your local DNS.

### Data Generators
[The repository](https://github.com/izzyacademy/DataGenerators) contains a set of micro services that simulates realtime purchase orders for customers of an online grocery store.
There is simulation of:
- new orders
- order fullfillment and shipments
- order deliveries
- order returns
- inventory replenishment by supplies and many more

### Apache Spark Analysis of Bounded Data Sets
[This repository](https://github.com/izzyacademy/SparkAnalysis) contains a batch analysis job with Apache spark that processes a fixed, bounded data set of grocery products and performs a bulk enrichment of the product items. It pulls the set of data from a MongoDB database, performs a join of the datasets and then saves the merged resultset into a new MongoDB collection

### Kafka Streams Analysis of Unbounded Data Streams
[This repo](https://github.com/izzyacademy/KafkaStreams) contains a set of micro services that perform realtime analysis of unbounded streams of data to simulate realtime analysis, joins and enrichment of product and order data. It demonstrates how Kafka Streams can be used to perform realtime joins with fact streams and dimension streams.

### KSQL Data Analysis of Realtime Data Streams
[The repository](https://github.com/izzyacademy/KSQL-Realtime-Streams) is a collection of DDL and DML statements used to perform data analysis and stream processing via KSQL and KSQLDB.

### Sales Data Web API
[The repository](https://github.com/izzyacademy/SalesAPI) contains a Spring Boot Java 11 application that contains micro services that report the data from the relational database as JSON. This will be used by the Angular Web Application to show reports and data visualization


### Sales Data Reporting and Visualization
Check out [this repo](https://github.com/izzyacademy/SalesWebApp) for a sample application that uses Node.js, Angular 11 and D3.js to create a web application that shows reports and real time data visualizations.



