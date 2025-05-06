terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}
 
provider "azurerm" {
features{}
}

resource "azurerm_resource_group" "rg" {
  name     = "my-rg"
  location = "East US"

  lifecycle {
    prevent_destroy = true
  }
}
