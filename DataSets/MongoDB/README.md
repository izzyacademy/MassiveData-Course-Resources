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

```


