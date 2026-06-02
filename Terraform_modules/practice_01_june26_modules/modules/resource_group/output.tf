output "rg_id" {
    value = {
        for rg_name , rg_value in azurerm_resource_group.rg :
        rg_name => rg_value.id
    }  
}