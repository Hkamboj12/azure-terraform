variable "subnet" {
    type = map(object({
      name = string
      vnet = string
      resource_group = string
      subnet_range = list(string)
    }))
    description = "used to assign the subnet values"  
}