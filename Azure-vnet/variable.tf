variable "rg-dev" {
    type = string
    default = "rg-dev"
    description = "This variable is used to define the resource in  developer environment"  
}

variable "vnet-dev" {
    type = string
    default = "vnet-dev"
    description = "This variable is used to define the vnet name in devloper environment"  
}


variable "location" {
  type = string
  default = "Central India"
  description = "This is the default location if u can override the location u can mofify in terraform.tfvar file"
}

variable "vnet-cidr" {
    description = "This variable is used to assign the CIDR range of vnet-dev"
    type = string
    default = "10.0.0.0/16" 
}
