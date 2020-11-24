## Helm Charts

This directory contains Helm charts used to provision a variety of data stores and data workloads in the Kubernetes cluster.

We will be interacting with these resources throughout the course.

You will also see the syntax for installing and verifying the presence of various components of each resource.

## Setting up Data Stores and Resources

### Setting up Cassandra

```shell
# This command installs the 3-node Cassandra Cluster
helm upgrade --install cassandra ./Cassandra --set cassandra.enabled=true

# This command uninstalls the cassandra resources
helm uninstall cassandra

```
