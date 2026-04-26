variable "rg-name" {
    type = string
    default = "rg-dev"
    description = "This is the default rg-name if u can override the rg u can mofify in terraform.tfvar file"
}

variable "location" {
  type = string
  default = "westus"
  description = "This is the default location if u can override the location u can mofify in terraform.tfvar file"
}