 
provider "azurerm" {
  features {}
} 

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  } 
}

module "my_rg" {
  source   = "./child_module"
#   name     = "akash-module"
#   location = "eastus"
}

output "my_rg_name" {
  value = module.my_rg.rg_name
}
