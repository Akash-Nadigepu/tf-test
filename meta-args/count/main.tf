provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "akash-test-${count.index}"
  location = "eastus"
  count = 5 
}

terraform{
 required_providers {
  azurerm = {
   source = "hashicorp/azurerm"
   version = "4.27.0"
  }
 }
}