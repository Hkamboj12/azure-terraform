resource "azurerm_virtual_network" "Vnet" {
    for_each = var.vnet_details
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group
    address_space = each.value.address_space
    tags = {
      environment = each.value.env
    }
}