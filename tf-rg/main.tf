provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "akash-test-01-rg"
  location = "East US"
}


resource "azurerm_resource_group" "example1" {
  name     = "akash-test-02-rg"
  location = "centralindia"
}

terraform{
 required_providers {
  azurerm = {
   source = "hashicorp/azurerm"
   version = "~>3.0"
  }
 }
 required_version = ">=1.0"
}