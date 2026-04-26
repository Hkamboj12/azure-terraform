resource "azurerm_resource_group" "rg-dev" {
    name = var.rg-name
    location = var.location  
}