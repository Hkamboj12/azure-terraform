output "NIC_id" {
  value = {
    for key, nic_id in azurerm_network_interface.NIC :
    key => nic_id.id
  }
}