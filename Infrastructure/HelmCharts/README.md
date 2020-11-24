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

### Setting up Cassandra

```shell
# This command installs the 3-node Cassandra Cluster
helm upgrade --install cassandra ./Cassandra --set cassandra.enabled=true

# This command uninstalls the cassandra resources
helm uninstall cassandra
```
