resource "azurerm_network_interface" "example" {
    for_each = var.NIC_details
  name                = each.value.NIC_name
  location            = each.value.location
  resource_group_name = each.value.resource_group

  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = each.value.sunbnet_id
    private_ip_address_allocation = "Dynamic"
  }
}