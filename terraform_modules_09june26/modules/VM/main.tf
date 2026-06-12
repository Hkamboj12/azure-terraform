resource "azurerm_virtual_machine" "VM" {
    for_each = var.VM_details
  name                  = each.value.VM_name
  location              = each.value.location
  resource_group_name   = each.value.resource_group
  network_interface_ids = var.NIC_id[each.value.network_interface_ids]
  vm_size               = each.value.vm_size

  storage_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }

  storage_os_disk {
    name              = "${each.value.VM_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  tags = {
    environment = each.value.environment
  }
  
}