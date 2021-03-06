# IBM Cloud cli docker container

![IBM Cloud logo](https://luo3ms4tlu-flywheel.netdna-ssl.com/wp-content/uploads/2019/03/company-ibmcloud.png)

[![Base image Alpine](https://img.shields.io/badge/Base%20image-Alpine-brightgreen)](https://hub.docker.com/_/alpine)
[![IBMCloud cli](https://img.shields.io/badge/IBM%20Cloud-cli-blue)](https://cloud.ibm.com)
![Container size](https://img.shields.io/docker/image-size/mlsmrc/ibmcloudcli/latest)
![Docker pulls](https://img.shields.io/docker/pulls/mlsmrc/ibmcloudcli)<br>
[![Build Status](https://travis-ci.org/mlsmrc/ibmcloudcli_container.svg?branch=master)](https://travis-ci.org/mlsmrc/ibmcloudcli_container)


## Description
This is the **non-official** IBM Cloud cli container.

The main idea of this container is use it to have an operator container belonging to the main container which manages changes such as:

- health check
- TLS certificates renewal


## What is the content?

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
