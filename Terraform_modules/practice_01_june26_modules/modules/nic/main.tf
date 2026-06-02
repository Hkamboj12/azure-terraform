resource "azurerm_network_interface" "NIC" {
    for_each = var.Private-NIC
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg
    ip_configuration {
      name = each.value.ipconfigname
      subnet_id = each.value.subid
      private_ip_address_allocation = each.value.pvtIpAddrAllc
    }
  
}