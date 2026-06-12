resource "azurerm_virtual_network_peering" "Vnet_peering" {
    for_each = var.vnet_peering_details
  name                      = each.value.name
  resource_group_name       = each.value.resource_group
  virtual_network_name      = each.value.virtual_network_name
  remote_virtual_network_id = var.Vnet_id[each.value.remote_network_name].id
  allow_virtual_network_access = true
  allow_forwarded_traffic       = true
}