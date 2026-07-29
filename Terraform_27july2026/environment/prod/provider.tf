terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.78.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "DO_NOT_DELETE"
    storage_account_name = "storageaccountstatefile"
    container_name = "statefile"
    key = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
    features {}  
}