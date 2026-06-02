variable "resource_group" {
  description = "This variable is used to create a resource group"
  default = {
    resource_name ={
        name = "rg-dev"
        location = "centralIndia"
        environment = "dev"
    }
  }
}