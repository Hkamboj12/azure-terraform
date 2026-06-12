output "NIC_id" {
    value = {
        for nic , NIC_id in azurerm_network_interface.NIC :
        nic => NIC_id.id
    }
}