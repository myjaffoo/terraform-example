# Configure the Docker provider
provider "docker" {
	 host = "tcp://$docker-machine-ip:2376"
}

# Create a container
resource "docker_container" "docker-jenkins" {
    name = "docker-jenkins"
    image = "${docker_image.jenkins.latest}"
    ports = {
    	internal = 8080
    	external = 8080
    }
    ports = {
    	internal = 50000
    	external = 50000
    }
}

# Find the latest jenkins docker image
resource "docker_image" "jenkins" {
    name = "jenkins:latest"
}
