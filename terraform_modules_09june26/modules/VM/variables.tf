variable "VM_details" {
    type = map(object({
      #vm details
      VM_name = string
      location = string
      resource_group = string
      network_interface_ids = list(string)
      vm_size = string

      #image details
      publisher = string
      offer = string
      sku = string
      version = string

      #tags
      environment = string
    }))
}
variable "NIC_id" {
    type = map(string)
}

