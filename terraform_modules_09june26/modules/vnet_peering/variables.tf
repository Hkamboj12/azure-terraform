variable "vnetPeering_details" {
    type = map(object({
      name = string
      resource_group = string
      virtual_network_name = string
      remote_virtual_network_id = string
    }))
}

variable "vnet" {
  type = map(string)  
}