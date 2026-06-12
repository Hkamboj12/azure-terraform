output "vnet_id" {
    value = {
        for vnet , vnet_id in azurerm_virtual_network.Vnet :
        vnet => vnet_id.id
    }
}