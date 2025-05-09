provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "akash-tf"
  location = "East US"
}

resource "azurerm_storage_account" "sa" {
  name                     = "akashtfsa"   # must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
