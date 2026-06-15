resource "azurerm_linux_virtual_machine" "VM" {
    for_each = var.vm_details
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group
  network_interface_ids = [var.nic_id[each.value.network_name]]
  size = each.value.vm_size
  admin_username = "adminuser"
  admin_password = "Kamboj@123"
  disable_password_authentication = false
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer = each.value.offer
    sku = each.value.sku
    version = "latest"
  }
}