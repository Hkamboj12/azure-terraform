variable "vm_details" {
  type = map(object ({
    name = string
    resource_group = string
    location = string
    vm_size = string
    network_name = string
    publisher = string
    sku = string
    offer = string
  }))
}

variable "nic_id" {
  type = map(any)
}