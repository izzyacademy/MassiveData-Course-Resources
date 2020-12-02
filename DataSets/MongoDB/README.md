### Loading Data into Mongo DB

Check to make sure the the MongoDB server is up and running

```shell

kubectl -n mongo get deployments
kubectl -n mongo get pods

```


### Log into the Debugger Server and Use the Scripts to Load the Data

```shell

# retrieve the deployment name for all pods in the debugger namespace
kubectl -n debugger get deployments


# Connect to the remote pod inside this deployment
kubectl -n debugger exec deploy/debugger -it -- bash

```

### Set up the working environment inside the pod

```shell

# Create a Labs folder in the home directory of the user

mkdir -p ~/Labs

# Clone the Repository to your local environment
git clone https://github.com/izzyacademy/MassiveData-Course-Resources.git


# Navigate into the directory containing the MongoDB import scripts
cd ~/Labs/MassiveData-Course-Resources/DataSets/MongoDB

```


### Load the Data into the MongoDB Database

```shell

./mongo.imports.sh

# You should see an output similar to this for each collection imported successfully
13 document(s) imported successfully. 0 document(s) failed to import.

You may now exit from the pod
exit

```


### Connect to the Mongo Deployment Pod to Interact with the Documents


```shell

kubectl -n mongo exec deploy/mongo -it -- bash

mongo --host mongo-internal.mongo.svc.cluster.local --port 27017 -u admin -p mong044120 --authenticationDatabase admin

```

### Interact with the Datasets

```javascript

// List databases;
db.adminCommand( { listDatabases: 1 } );

// switch to the ecommerce database
use ecommerce;

// display all collections within this database
db.getCollectionNames();

// Display all records within the products collection
db.products.find({});

// Display all records within the products collection
db.product_details.find({});

// Display all records within the products collection
db.products_enriched.find({});

```


