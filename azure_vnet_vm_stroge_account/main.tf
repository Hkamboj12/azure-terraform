resource "azurerm_resource_group" "rg" {
  for_each = var.rg-dev
  name     = each.key
  location = each.value
}


resource "azurerm_virtual_network" "vnet-prod" {
  depends_on          = [azurerm_resource_group.rg]
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "public-sub" {
  depends_on           = [azurerm_resource_group.rg, azurerm_virtual_network.vnet-prod]
  for_each             = var.subnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_space

}

# resource "azurerm_linux_virtual_machine" "VM" {
#     name = ""
#     resource_group_name = ""
#     location = ""
    
  
# }