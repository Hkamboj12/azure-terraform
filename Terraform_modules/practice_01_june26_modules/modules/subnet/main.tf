resource "azurerm_subnet" "sub" {
    for_each = var.subnet
    name = each.value.name
    virtual_network_name = each.value.vnet
    resource_group_name = each.value.resource_group
    address_prefixes = each.value.subnet_range
}