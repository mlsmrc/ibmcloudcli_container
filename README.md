# IBM Cloud cli docker container

![IBM Cloud logo](https://luo3ms4tlu-flywheel.netdna-ssl.com/wp-content/uploads/2019/03/company-ibmcloud.png)

[![Base image Alpine](https://img.shields.io/badge/Base%20image-Alpine-brightgreen)](https://hub.docker.com/_/alpine)
[![IBMCloud cli](https://img.shields.io/badge/IBM%20Cloud-cli-blue)](https://cloud.ibm.com)

## Description
This is the **non-official** IBM Cloud cli container.

The main idea of this container is use it as K8s Job or Cronjob in order to perform scheduled actions on Cloud like monitoring or certificate renewal.

**Size:** ~100Mb 

## What is installed inside of it?

The base image is the [Alpine](https://hub.docker.com/_/alpine).

We have installed some utilities such as:

- jq (JSON Parser)
- yq (YAML Parser)
- curl
- kubectl

and all the IBM Cloud plugins:

- activity-tracker
- analytics-engine
- auto-scaling
- catalogs-management
- cloud-databases
- cloud-dns-services
- cloud-functions
- cloud-internet-services
- cloud-object-storage
- code-engine
- coligo
- container-registry
- container-service
- dbaas-cli
- dev
- dl-cli
- doi
- event-streams
- hpvs
- key-protect
- machine-learning
- observe-service
- power-iaas
- push-notifications
- schematics
- tg-cli
- tke
- vpc-infrastructure
- vpn
- watson