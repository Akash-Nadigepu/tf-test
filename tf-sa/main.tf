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


# 1. Reference existing Resource Group
data "azurerm_resource_group" "existing_rg" {
  name = "akash-rg"   # Use the name of your existing RG
}

# 2. Create Storage Account in existing Resource Group
resource "azurerm_storage_account" "akash_storage" {
  name                     = "akashsatf"                          # Must be globally unique
  resource_group_name      = data.azurerm_resource_group.existing_rg.name
  location                 = data.azurerm_resource_group.existing_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"

  tags = {
    environment = "demo"
  }
}

# 3. Create Storage Container
resource "azurerm_storage_container" "akash_container" {
  name                  = "demo-container"
  storage_account_name  = azurerm_storage_account.akash_storage.name
  container_access_type = "private"
}
