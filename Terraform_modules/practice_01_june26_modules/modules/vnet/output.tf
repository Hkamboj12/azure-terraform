output "vnet_id" {
    value = {
        for vnet_name , vnet_value in azurerm_virtual_network.vnet : 
        vnet_name => vnet_value.id
    }
}