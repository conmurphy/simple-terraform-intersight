terraform {
  required_providers {
    intersight = {
      source = "CiscoDevNet/intersight"
      version = "1.0.32"
    }
  }
}

variable "API_KEY" {
}

variable "SECRET_KEY" {
}

variable "organization" {
}

provider "intersight" {
  apikey    = var.API_KEY
  secretkey = var.SECRET_KEY
  endpoint = "https://intersight.com"
}

resource "intersight_fabric_port_policy" "fabric_port_policy1" {
  name         = "my_fabric_port_policy1"
  description  = "demo fabric port policy"
  device_model = "UCS-FI-6454"
  organization {
    object_type = "organization.Organization"
    moid        = var.organization
  }
}

 
