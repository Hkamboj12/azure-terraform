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

variable "sub_details" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
    address_prefixes     = list(string)
  }))
}

variable "NIC_details" {
  type = map(object({
    NIC_name       = string
    resource_group = string
    location       = string
    ip_name        = string
    subnet_name    = string
  }))
}

variable "PUbIP_details" {
  type = map(object({
    name           = string
    resource_group = string
    location       = string
    env            = string
  }))
}


variable "bastion_details" {
  type = map(object({
    name           = string
    location       = string
    resource_group = string
    bastion_config = string
    subnet_name    = string
    publicIp       = string
  }))
}

variable "vm_details" {
  type = map(object({
    name           = string
    resource_group = string
    location       = string
    vm_size        = string
    network_name   = string
    publisher      = string
    sku            = string
    offer          = string
  }))
}


variable "windows_server" {
  type = map(object({
    name              = string
    location          = string
    resource_group    = string
    network_interface = string
    size              = string
    publisher         = string
    offer             = string
    sku               = string
  }))
}