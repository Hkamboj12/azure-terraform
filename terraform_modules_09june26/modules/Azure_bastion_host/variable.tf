variable "bastion_details" {
    type = map(object({
      name = string
      location = string
      resource_group = string 
      bastion_config = string
      subnet_name = string
      publicIp = string
    }))
}

variable "subnet_id" {
  type = map(string)
}

variable "public_IP" {
  type = map(string)
}