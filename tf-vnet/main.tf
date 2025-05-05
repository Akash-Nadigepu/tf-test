provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "akash_vnet_tf"
  location            = "eastus"
  resource_group_name = "akash-rg"
  address_space       = ["10.0.0.0/16"]
    
}