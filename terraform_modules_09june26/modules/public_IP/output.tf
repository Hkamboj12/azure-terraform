output "public_ip" {
    value = {
        for ip , pub_ip in azurerm_public_ip.pIP :
        ip => pub_ip.ip_address
    }
}