terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}



# declare any input variables

provider "docker" {

}


# create docker volume resource

# create docker network resource

# create frontend container
resource "docker_container" "frontend" {
  name  = "frontend"
  image = "node:latest"
  restart = "always"
  command = ["npm", "start"]
}

# create backend container
resource "docker_container" "backend" {
  name  = "backend"
  image = "node:latest"
  restart = "always"
  ports {
    internal = "9000"
    external = "9000"
  }
  command = ["npm", "run","dev"]
}
