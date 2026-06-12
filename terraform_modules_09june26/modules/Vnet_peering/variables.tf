variable "vnet_peering_details" {
    type = map(object({
        name = string
        resource_group = string
        virtual_network_name = string
        remote_network_name = string
    }))  
}

variable "Vnet_id" {
    type = map(string)  
}