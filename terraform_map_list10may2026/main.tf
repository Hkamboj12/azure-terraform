resource "azurerm_resource_group" "rg" {
  for_each = var.rg
  name = each.key
  location = each.value
}

# resource "azurerm_storage_account" "sg" {
#     for_each = var.storage_group
#     name = each.key.name
#     resource_group_name = each.key.resource_group_name 
#     location = each.key.loction
#     account_tier = each.key.account_tier
#     account_replication_type = each.key.account_replication_type
# }

# resource "azurerm_virtual_machine" "VM" {
#   name                  = ""
#   location              = ""
#   resource_group_name   = ""
#   network_interface_ids = [""]
#   vm_size               = "Standard_DS1_v2"
# }