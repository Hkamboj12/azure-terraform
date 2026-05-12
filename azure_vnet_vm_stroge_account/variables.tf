variable "rg-dev" {
  type = map(string)
  default = {
    dev = "central india"
  }
}


variable "vnet" {
  type = map(object({
    name           = string
    location       = string
    resource_group = string
    address_space  = list(string)
  }))

  default = {
    vnet1 = {
      name           = "vnet-dev"
      location       = "central india"
      resource_group = "dev"
      address_space  = ["10.0.0.0/16"]
    }
  }

}


variable "subnet" {
  type = map(object({
    name                 = string
    resource_group       = string
    virtual_network_name = string
    address_space        = list(string)
  }))

  default = {
    public-sub = {
      name                 = "public"
      resource_group       = "dev"
      virtual_network_name = "vnet-dev"
      address_space        = ["10.0.1.0/24"]

    }

    private-sub = {
      name                 = "private"
      resource_group       = "dev"
      virtual_network_name = "vnet-dev"
      address_space        = ["10.0.2.0/24"]
    }
  }
}