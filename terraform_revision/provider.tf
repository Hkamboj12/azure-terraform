terraform {
  required_providers {
    azurerm = "hashicrop/azurerm"
    source = "4.72.0"
  }
  backend "azurerm" {
    resource_group_name = ""
    storage_account_name = "value"
    container_name = "value"
    key = "value"
    
  }
}

provider "azurerm" {
  features {}
}