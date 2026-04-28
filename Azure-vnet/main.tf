resource "azurerm_resource_group" "rg-vnet" {
    name = var.rg-dev
    location = var.location
}


resource "azurerm_virtual_network" "V-net-dlink" {
    depends_on = [ azurerm_resource_group.rg-vnet ]
    name = var.vnet-dev
    resource_group_name = var.rg-dev
    location = var.location
    address_space = [var.vnet-cidr]
}

