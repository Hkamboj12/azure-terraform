output "resource_group_output" {
    value = {
        for rg_key , rg_value in azurerm_resource_group.rg :
        rg_key => {
            name = rg_value.name
            location = rg_value.location
        }
    }   
}