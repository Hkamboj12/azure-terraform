output "subnet_id" {
    value =   {
        for key , subnet in azurerm_subnet.Subnet :
        key => subnet.id 
    }
}