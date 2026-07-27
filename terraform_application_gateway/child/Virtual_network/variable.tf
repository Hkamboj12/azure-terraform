variable "vnet" {
    description = "A map of virtual network names and their properties"
    type        = map(object({
        name                = string
        address_space       = list(string)
        location            = string
        resource_group_name = string
        environment         = string
    }))
}

variable "rg-name" {
    description = "The name of the resource group"
    type        = map(object({
      name = "string"
      location = "string"
    }))
}


#C:\Program Files\WindowsApps\Microsoft.HEVCVideoExtension_2.4.43.0_x64__8wekyb3d8bbwe