terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
}
provider "azurerm" {
  features {}
}
# Azure Resource Group Module
module "azurerm_resource_group" {
  source              = "../../modules/azurerm_resource_group"
  resource_group_name = "myResourceGroup"
  location            = "East US"
}