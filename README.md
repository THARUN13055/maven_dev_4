# THIS IS THE PROJECT 3

***

## Uses of Tools

- Maven
- Docker
- jenkins
- kubernetes
- helm
- terraform
- virtualMachine 
  1. ec2 or azurevm

## Virtual Machine Specification to run

1. minimum 4 GB ram
2. 2 VM 
3. One for Jenkins and SonarQube
4. Another one for Nexus and Kubernetes

# Here We Use Jenkins Shared Library

[Jenkins_shared_lib](https://github.com/THARUN13055/jenkins-shared-lib.git)

## Advantage for Jenkins Shared Lib

- Code Reusable
- Easy to Analysis

## To Execute SpringBoot Raw

```bash
mvn test
mvn verify -DskipUnitTests
mvn clean install
```

## Over View of this Files

- This is  **springboot** application
- And Create the Docker image using 'dockerfile' 
- Create the Manifest file for kubernetes
- Help of Creating Kubernetes Manifest file using Helm chart
- CICD & Automation through Jenkins
- Create the terraform file to create the Kubernetes **AKS**

## Over view of the VirtualMachine

- Install Docker

- Install SonarQube

- Install Maven

- Install java.11

- Install Jenkins

- Install kubectl

- Install Helm chat

- Install Terraform cli

- Install az_cli

- Create the aks cluster

# For all this Installation Use This 'wget'

```bash
wget https://raw.githubusercontent.com/THARUN13055/quick_install_linux/main/pacman.py
```
## How its work

```bash

wget https://raw.githubusercontent.com/THARUN13055/quick_install_linux/main/pacman.py

python3 pacman.py list

python3 pacman.py install <listed>

```

## Kubernetes Raw Execution

```bash
helm install java_chart
```

- It will Execute all The Kubernetes File in Helm
