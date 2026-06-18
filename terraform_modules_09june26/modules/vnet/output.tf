output "vnet_id" {
    value = {
        for key , vnet_id in azurerm_virtual_network.Vnet:
        key => vnet_id.id
    }
}