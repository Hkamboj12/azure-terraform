# resource "azurerm_virtual_machine" "VMS" {
#   for_each = var.azure_vm
#   name                  = each.value.name
#   location              = each.value.location
#   resource_group_name   = each.value.rg
#   network_interface_ids = each.value.nic
#   vm_size               = each.value.vm_size

#   storage_os_disk {
#     name              = "myosdisk1"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "hostname"
#     admin_username = "testadmin"
#     admin_password = "Password1234!"
#   }
# }