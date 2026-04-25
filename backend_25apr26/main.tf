resource "azurerm_resource_group" "rg1" {
  name     = "rg-dev"
  location = "Central India"

  tags = {
    env = "dev"
  }
}


resource "azurerm_storage_account" "sg-stateFile" {
  name                     = "statefilehimanshu"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    type = "stateFile"
  }
}
resource "azurerm_storage_container" "blob-statefile" {
  name                  = "statefilecontainer"
  storage_account_id    = azurerm_storage_account.sg-stateFile.id
  container_access_type = "private"
}

resource "azurerm_resource_group" "rg-test" {
  name = "rg-test"
  location = "Central India"
}
