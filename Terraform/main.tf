provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "helloazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "australiasoutheast"
}
resource "azurerm_resource_group" "rg-hello-azure-tf" {
  name     = "rg-hello-azure-tf"
  location = "australiasoutheast"
  tags = {
    Environment = "Changed environment tag again"
  }
}
