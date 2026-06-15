output "NIC_id" {
    value = {
        for nic , nic_id in azurerm_network_interface.NIC: 
        nic => nic_id.id
    } 
}