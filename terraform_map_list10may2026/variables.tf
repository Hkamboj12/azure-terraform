variable "rg" {
    type = map(string)
    default = {
      dev = "centralindia"
      prod = "westus"
    }  
}

# variable "storage_group" {
#     type = map(string)
#     default = {
#         stg = {
#             name = "himanshustroage123456"
#             location = "centralindia"
#             resource_group_name = "dev"
#             account_tier = "Standard"
#             account_replication_type = "GRS"
#         }
#     }  
# }