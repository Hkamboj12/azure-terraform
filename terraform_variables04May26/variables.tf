variable "rg-string" {
    type = string 
    default = "rg-string"
    description = "This varibale is used to learn how string variable work in terraform"
}

variable "rg-list" {
    type = list(string)
    default = ["rg-1","rg-2","rg-3"]
    description = " This variable is used to learn how list working terraform" 
}

variable "rg-listCount" {
    type = list(string)
    default = ["rg-6","rg-5","rg-4"]
}

variable "location" {
    type = string
    default = "centralindia"
    description = "This variable is used to assign the location where my resource group created"
}