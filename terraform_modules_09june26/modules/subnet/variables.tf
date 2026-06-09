variable "sub_details" {
    type = map(object({
      name = string
      virtual_network_name = string
      resource_group_name = string
      address_prefixes = list(string)
    }))  
}