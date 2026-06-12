resource "azurerm_network_interface" "NIC" {
    for_each = var.NIC_details
  name                = each.value.NIC_name
  location            = each.value.location
  resource_group_name = each.value.resource_group

  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = var.subnet_id[each.value.subnet_name]
    private_ip_address_allocation = "Dynamic"
  }
}