terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.20.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "weatherapp" {
  name         = "davideden/weatherapp:latest"
  keep_locally = false
}

resource "docker_container" "weatherapp" {
  image = docker_image.weatherapp.name
  name  = "my-weatherapp"
  ports {
    internal = 5000
    external = 8000
  }
}
