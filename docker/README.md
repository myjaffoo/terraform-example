# Terraform/Jenkins/Docker

## Pre-requisites
* Install Docker Toolbox
* Install terraform CLI

## Generate and show an execution plan
<code>terraform plan</code>

## Pull Docker image and Create Docker container
<code>terraform apply</code>

## Mark a specific resource for recreation e.g. Docker container only - resource name can be found in terraform.tfstate file
<code>terraform taint docker_container.docker-jenkins</code>

<code>terraform plan</code>

<code>terraform apply</code>

## Verify Jenkins is up and running
* List your docker machines - docker-machine ls
* Get your docker machine ip - docker-machine ip $machine-name
* Check jenkins is available at http://$docker-machine-ip:8080

<b>N.B - replace the variable on line 3 with your docker machine ip </b>
