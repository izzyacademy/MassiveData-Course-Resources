## Helm Charts

This directory contains Helm charts used to provision a variety of data stores and data workloads in the Kubernetes cluster.

We will be interacting with these resources throughout the course.

You will also see the syntax for installing and verifying the presence of various components of each resource.

## General Syntax for Helm Commands
This directory contains several Helm charts and we are going to go over the general syntax for performing the following tasks
- Installing the Helm Chart
- Upgrading the Helm Chart
- Uninstalling the Helm Chart
- Getting a List of Releases installed via Helm

### Installing a Helm Chart

This is the general syntax I use for installing a helm chart. It installs it if it is the first time or updates the release if it already exists

```shell
helm upgrade --install {release} {path to chart} --set {specific values}
```
### Removing the Helm Release

```shell
helm uninstall {release name}
```

### Getting the List of Helm Releases

```shell
helm list
```

## General Syntax for Interacting with the Kubernetes Resources
We are also going to discuss briefly how to perform the following tasks
- Getting a List of Kubernetes namespaces on the cluster
- Listing all the network services within a namespace
- Listing all the pods within a namespace
- Listing all the persistent volumes on the cluster
- Listing all the secrets within a namespace
- Listing all the config maps within a namespace
- Connecting into the default pod within a deployment
- Getting the logs from the default pod within a deployment


```shell
# Use this command to get the list of Kubernetes namespaces on the cluster 
kubectl get namespaces
kubectl get ns

# Use this command list all the persistent volumes
kubectl get pv
kubectl get persistentvolumes

# Use this command to get the network services within a namespace
kubectl -n {namespace} get services
kubectl -n {namespace} get svc

# Use this command to list all the deployments within a namespace
kubectl -n {namespace} get deployments

# Use this command to list all the pods within a namespace
# It also shows you the status and age of each of the pods
kubectl -n {namespace} get pods

# Use this command to list all the secrets in a namespace 
kubectl -n {namespace} get secrets

# Use this command to list all the config maps within a namespace
kubectl -n {namespace} get configmap
kubectl -n {namespace} get cm

# Use this command to connect to the specific pod within a deployment
kubectl -n {namespace} exec deploy/{deployment name} -it -- {command}

# Use this command to get logs from a specific pod within a deployment
kubectl -n {namespace} logs deploy/{deployment name}

```
## Setting up Data Stores and Resources
In the following sections, we are going to walk through how to set up the data stores and data workloads

## Setting up the Ubuntu Debugger Container

This is one of the containers we will use to debug the status of other resources within the environment.
The following commands can be used to setup and remove the debugger container 

```shell

# We will use this container to connect to other containers in our Infrastructure
helm upgrade --install ubuntu-debugger ./Ubuntu-Debugger --set debugger.enabled=true

This command can be used to uninstall the debugger container
helm uninstall ubuntu-debugger

```

### Setting up MySQL Datastores
Use the following commands to install/uninstall MySQL 5.6, 5.7 or 8.0 respectively.

```shell

helm upgrade --install mysql56 ./MySQL5.6
helm uninstall mysql56

helm upgrade --install mysql57 ./MySQL5.7
helm uninstall mysql57

helm upgrade --install mysql80 ./MySQL8.0
helm uninstall mysql80
```

### Setting up PostgreSQL

Use the following commands to install/uninstall PostgreSQL 11 and 13 respectively

```shell

helm upgrade --install postgres116 ./Postgres11.6
helm uninstall postgres116

helm upgrade --install postgres130 ./Postgres13.0
helm uninstall postgres130

```

### Setting up Cassandra

These commands demonstrates how to set up and remove the Cassandra cluster

```shell
# This command installs the 3-node Cassandra Cluster
helm upgrade --install cassandra ./Cassandra --set cassandra.enabled=true

# This command uninstalls the cassandra resources
helm uninstall cassandra
```

### Setting up MongoDB

These commands demonstrates how to setup and remove the MongoDB cluster

```shell
helm upgrade --install mongodb ./MongoDB
helm uninstall mongodb
```

### Setting up Redis Key Value Store

```shell
helm upgrade --install redis ./Redis
helm uninstall redis

```

### Setting Up the ElasticSearch and Kibana Resources

```shell
# Install Elastic Search Server
helm upgrade --install elastic-foundation Elastic-Foundation/
helm upgrade --install elastic-resources Elastic-Resources/

```

### Setting up Neo4j Graph Store

Run this command to install or uninstall the Neo4j graph store

```shell

helm install neo4j ./Neo4j --set core.standalone=true --set acceptLicenseAgreement=yes --set neo4jPassword=mySecretPassword
helm uninstall neo4j

```


### Setting up Kafka Cluster and Ecosystem

```shell

# Run this command to create the namespace for the Kafka ecosystem
kubectl create ns river

# The following command can be used to install/uninstall the Zookeeper component
helm upgrade --install river-zookeeper ./Confluent --set zookeeper.enabled=true
helm uninstall river-zookeeper

# The following command can be used to install/uninstall the Kafka Broker components
helm upgrade --install river-broker ./Confluent --set broker.enabled=true
helm uninstall river-broker

# The following command can be used to install/uninstall the Schema registry components
helm upgrade --install river-registry ./Confluent --set schemaregistry.enabled=true
helm uninstall river-registry

# The following command can be used to install/uninstall the Kafka Connect components
helm upgrade --install river-connect ./Confluent --set connect.enabled=true
helm uninstall river-connect

# The following command can be used to install/uninstall the Kafka Rest Proxy components
helm upgrade --install river-restproxy ./Confluent --set restproxy.enabled=true
helm uninstall river-restproxy

# The following command can be used to install/uninstall the KSQL components
helm upgrade --install river-ksql ./Confluent --set ksqldbserver.enabled=true --set ksqldbcli.enabled=true
helm uninstall river-ksql

```
