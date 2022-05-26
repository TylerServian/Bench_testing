terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "helloazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}