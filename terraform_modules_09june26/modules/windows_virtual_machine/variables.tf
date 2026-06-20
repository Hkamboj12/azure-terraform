variable "windows_server" {
    type = map(object({
        name = string
        location = string
        resource_group = string
        network_interface = string
        size = string
        publisher = string
        offer = string
        sku = string
    }))
}

variable "nic_id" {
  type = map(any)
}
