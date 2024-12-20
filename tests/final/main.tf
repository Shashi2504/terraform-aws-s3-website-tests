terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.4.0"
    }
  }
}

variable "endpoint" {
  description = "Endpoint for the bucket"
  type = string
}

data "http" "index" {
  url = var.endpoint
  method = "GET"
}
