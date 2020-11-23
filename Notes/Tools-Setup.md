
## Tools Setup

This page contains instructions on how to setup your local development environment with the IDEs and tools needed to interact with the data stores and data workloads discussed during the course


### Git

You will need to make sure Git is available in your CLI. If you do not have, it please install it and make it available in your Path.

[This page](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) should work you through how to set it up.

### Azure CLI

We will need Azure CLI 2.15 or later to be installed as well. You can visit [this website](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) for directions on how to set it up.

### Visual Studio Code

We will use VS Code to edit and create several scripts during the course. If you would like to follow along you can install VSCode as well in your environment to use the same strategies

Please visit the [Visual Studio Code](https://code.visualstudio.com/) website to get started with the setup and installation.


### Intellij

We will be using Intellij to edit and create several applications, scripts and programs to interact with the data stores and data workloads.
You can visit the [Intellij website](https://www.jetbrains.com/idea/download/) for how to install this IDE.

### Docker

Docker will be used to create and modify the containerized apps we are using in the course.
Please visit the [Docker Desktop website](https://www.docker.com/products/docker-desktop) for directions on how to setup and configure Docker Desktop for your local environment.


### Postman

There are several REST API endpoints exposed by the datastores and applications discussed during the course. Postman simplifies how we interact with these resources.
Please visit the [Postman REST client home page](https://www.postman.com/product/rest-client/) for guidance on how to setup Postman for your target environment.

### Kubectl
Kubectl (pronounced Cube Control) allows us to interact with Kubernetes resources in the remote cluster. 
We can install the tool directly from [this page](https://kubernetes.io/docs/tasks/tools/install-kubectl/) or we can use the Azure CLI to [install the latest CLI version](https://docs.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az_aks_install_cli) 
### Helm 3
Helm simplies the management of Kubernetes resources by grouping the installation, modification and removal of related Kubernetes resources in packages referred to as Charts.
We will be using Helm in the course and you can install it and add it to your Path by following the directions [here](https://helm.sh/docs/intro/install/)

### Java SDK 11
We will be setting up Java 11 SDK from OpenJDK using the binaries available [here](https://adoptopenjdk.net/?variant=openjdk11&jvmVariant=hotspot). You can download it, decompress the tarball and add the bin directory to your Path.

### Scala 2.12
Similar to Java 11, we will also be setting up the Scala environment by downloading the target binary and adding it to the path. 
Our Spark applications need Scala to run.
You can download the Scala binary from [this page](https://www.scala-lang.org/download/2.11.12.html) and make it available in your Path.

### Spark 3.0.1
The batch analysis framework we will be demonstrating is Spark. We will be downloading Spark 3.0.1 using the binaries build for Hadoop 3.2 and later.
Visit [this page](https://spark.apache.org/downloads.html) to get the binaries

### Maven 3.6.3 or later
The maven project is used to compile Java and Scala source codes into binaries. 
You can visit [this page](https://maven.apache.org/download.cgi) to download the Maven tarball, then decompress the tarball and add the bin directory to your Path.

