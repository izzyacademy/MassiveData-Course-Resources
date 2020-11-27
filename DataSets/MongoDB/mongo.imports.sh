#!/bin/bash

# https://docs.mongodb.com/database-tools/mongoimport/#import-csv-with-specified-field-types

hostname="52.241.138.173"
port_number="27017"
username="admin"
password="mong044120"
authenticationDatabase="admin"

mongoDatabase="ecommerce"

# Function used to simplify importing CSV data into a strongly typed MongoDB collection
import_csv_data()
{
    collection=$1
    filename=$2
    fieldTypes=$3

    echo "Connecting to $hostname on port $port_number identified by $username with password $password"
    echo "Using authentication database $authenticationDatabase"
    echo "Attempting to load data into collection $mongoDatabase.$collection"
    echo "collection=$collection, fieldDataTypes=$fieldTypes"
    echo "Importing CSV file $filename into collection $mongoDatabase.$collection"

    # Running the mongoimport command to load CSV data into mongo collection
    mongoimport --host $hostname --port $port_number \
   --username $username -p $password --authenticationDatabase $authenticationDatabase --db=$mongoDatabase \
   --type=csv \
   --columnsHaveTypes \
   --ignoreBlanks \
   --collection="$collection"  \
   --fields="$fieldTypes" \
   --file="$filename"

   echo ""
   echo ""
   echo "Import of $filename into collection $mongoDatabase.$collection is completed"
   echo "---------------------------------------------------------------------------"
   echo ""
}

import_csv_data "departments" "departments.csv" "department_id.int32(),name.string()"
import_csv_data "products" "products.csv" "department.int32(),product_id.int32(),name.string()"
import_csv_data "product_details" "product_details.csv" "product_id.int32(),long_description.string()"
import_csv_data "products_enriched" "products_enriched.csv" "product_id.int32(),department.int32(),name.string(),long_description.string()"

