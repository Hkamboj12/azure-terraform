variable "PUbIP_details" {
    type = map(object({
      name = string
      resource_group = string
      location = string
      env = string
    }))
}