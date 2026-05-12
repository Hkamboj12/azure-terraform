rg-dev = {
  "prod" = "west us"
}

vnet = {

  vnet1 = {
    name           = "vnet-prod"
    resource_group = "prod"
    location       = "west us"
    address_space  = ["10.0.0.0/16"]
  }
}

subnet = {

  public-sub = {
    name                 = "public"
    resource_group       = "prod"
    virtual_network_name = "vnet-prod"
    address_space        = ["10.0.1.0/24"]

  }

  private-sub = {
    name                 = "private"
    resource_group       = "prod"
    virtual_network_name = "vnet-prod"
    address_space        = ["10.0.2.0/24"]
  }
}

