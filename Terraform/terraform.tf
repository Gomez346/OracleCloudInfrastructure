# terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
}


terraform {
  backend "http" {
    address = "https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/jyAE4jUUa2bPO78bgJrUdVyO6F_gxODCnyOOkItc_19B0tBoySWu46dBHNQi5LIt/n/grf7oq6zgjjs/b/terraform-state-bucket/o/terraform.tfstate"
    update_method = "PUT"
  }
}