variable "NIC_details" {
    type = map(object({
      NIC_name = string
      resource_group = string
      location = string
      ip_name = string
      sunbnet_id = string
      
    }))  
}