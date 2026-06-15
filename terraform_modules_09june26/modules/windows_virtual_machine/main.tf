resource "azurerm_windows_virtual_machine" "Windows_VM" {
    for_each = var.windows_server
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group
    network_interface_ids = [var.nic_id[each.value.network_interface]]
    size = each.value.size
    admin_username = "adminuser"
    admin_password = "Kamboj@2030"

    source_image_reference {
      publisher = each.value.publisher
      offer = each.value.offer
      sku = each.value.sku
      version = "latest"
    }

    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

}