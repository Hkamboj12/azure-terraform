variable "module-rg" {
  type = map(map(string))
  default = {
    rg1 = {
      name          = "resource_group"
      location      = "centralindia"
      resource_type = "resource_group"
    }

    rg2 = {
      name          = "resource_group"
      location      = "centralindia"
      resource_type = "resource_group"
    }
  }

}