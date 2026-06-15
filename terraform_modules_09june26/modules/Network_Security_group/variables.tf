variable "NSG_details" {
    type = map(object({
      name = string
      location = string
      resource_group = string
    }))
}

