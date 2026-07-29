variable "resource_group" {
    description = "This variable is used for resource group"
}

variable "virtual_network" {
    description = "This is virtual network variable"  
}

variable "subnet_details" {
    description =  "This is used for subnet details"  
}

variable "vnet_peering" {
    description   = "This is used to create the vnet peering"
}

variable "nic_details" {
    description = " This variable is used for network interface card"  
}

variable "public_ip" {
    description = "This variable is used for public ip details"  
}

variable "bastion_host" {
    description = " This variable is used to deploy bastion host on HUB vnet"  
}

variable "network_security_group" {
    description = " This is used to NSG for application"  
}

variable "nsg_rule" {
    description = " This variable is for nsg rules"
}

variable "NAT_gateway" {
    description = "This variable is used to deploy NAT gateway in multiple region"  
}

variable "NAT_pub_ip_associt" {
  description = "This is used for nat and public ip assocation "
}

variable "NAT_SUB_assocation" {
    description = "Vales of nt and subnet id"  
}

variable "linux_virtula_machine" {
    description = "This is used for linux virtula machine" 
}

variable "nic_nsg_assocation" {
    description = "This is used for nic and nsg"  
}