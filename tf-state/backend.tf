terraform {
  backend "azurerm" {
    resource_group_name  = "akash-tf"
    storage_account_name = "akashtfsa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
