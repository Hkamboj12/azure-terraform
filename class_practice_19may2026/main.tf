resource "azurerm_resource_group" "rg-1" {
    for_each = {
      stg-1  = {
        name = "dev"
        location = "centralindia"
        env = "dev-env"
      }
      rg-2 ={
        name = "sonu"
        location = "westus"
        env = "test-env"
      }
    }

    name = each.value.name
    location = each.value.location
    tags = {
      env = each.value.env
      name = ""
      cpu = ""
      owner = ""
      }  
}


resource "azurerm_storage_account" "st-1" {
    for_each = var.stg
    name = each.value.deepak                     # 
    location = each.value.lgt                    #
    resource_group_name = each.value.rg          #
    account_tier = each.value.acc_tier           #
    account_replication_type = each.value.saurabh  
  
}



# rg-1 = {
#         name = "dev"
#         location = "centralindia"
#         env = "dev-env"
#       }