variable "rg_details" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    env        = string
  }))
}

variable "vnet_details" {
  type = map(object({
    name           = string
    location       = string
    resource_group = string
    address_space  = list(string)
    env            = string
  }))
}