variable "NIC_details" {
    type = map(object({
      NIC_name = string
      resource_group = string
      location = string
      ip_name = string
      subnet_name = string
    }))  
}

variable "subnet_id" {
  type = map(string)  
}