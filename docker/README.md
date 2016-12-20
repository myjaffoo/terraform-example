# Terraform/Jenkins/Docker

## Generate and show an execution plan
<code>terraform plan</code>

## Pull Docker image and Create Docker container
<code>terraform apply</code>

## Mark a specific resource for recreation e.g. Docker container only - resource name can be found in terraform.tfstate file
<code>terraform taint docker_container.docker-jenkins</code>

<code>terraform plan</code>

<code>terraform apply</code>
