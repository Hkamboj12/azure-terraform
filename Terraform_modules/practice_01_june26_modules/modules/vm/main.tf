resource "azurerm_virtual_machine" "VMs" {
    name = ""
    location = ""
    resource_group_name = ""
    network_interface_ids =  [""]
    vm_size = ""
    

    os_profile {
      computer_name = ""
      admin_username = ""
      admin_password = ""
    }

    storage_os_disk {
      name = ""
      caching = ""
      create_option = ""
      managed_disk_type = ""
    }
}