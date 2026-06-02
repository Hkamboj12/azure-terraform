variable "vnet" {
    type = map(object({
      name = string
      location = string
      resource_group = string
      address_space = list(string)
    }))

    description = "used to assign the vnet values"  
}