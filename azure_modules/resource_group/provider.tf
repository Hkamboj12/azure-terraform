terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-dev"
    storage_account_name = "statefilehimanshu123"
    container_name       = "statefilecontainer"
    key                  = "resource_group.tfstate"
  }
}

provider "azurerm" {
  features {}
}
