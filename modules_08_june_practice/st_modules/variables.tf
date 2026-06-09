variable "storage_details" {
  type = map(object({
    name                     = string
    location = string
    rg = string
    acc_tier             = string
    acc_rp_type = string


  }))
}