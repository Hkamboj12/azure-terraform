rg_details = {
  rg1 = {
    name       = "rg-git"
    location   = "Central US"
    managed_by = "Terraform"
    env        = "dev"
  }
}

vnet_details = {
  vnet-1 = {
    name           = "vnet-1"
    location       = "Central US"
    resource_group = "rg-git"
    address_space  = ["10.0.0.0/16"]
    env            = "dev"
  }
}