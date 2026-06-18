rg_details = {
  rg-1 = {
    name       = "rg-dev"
    location   = "Central India"
    managed_by = "terraform"
    env        = "dev"
  }
}

vnet_details = {
  vnet-1 = {
    name           = "vnet1-dev"
    location       = "Central India"
    resource_group = "rg-dev"
    address_space  = ["10.1.0.0/16"]
    env            = "dev"
  }

  vnet-2 = {
    name           = "vnet2-dev"
    location       = "Central India"
    resource_group = "rg-dev"
    address_space  = ["10.2.0.0/16"]
    env            = "dev"
  }
}

sub_details = {
  vnet1_PubSub = {
    name                 = "Public-Sub"
    virtual_network_name = "vnet1-dev"
    resource_group_name  = "rg-dev"
    address_prefixes     = ["10.1.1.0/24"]
  }

  vnet1_PvtSub = {
    name                 = "Private-Sub"
    virtual_network_name = "vnet1-dev"
    resource_group_name  = "rg-dev"
    address_prefixes     = ["10.1.2.0/24"]
  }

  vnet2_PubSub = {
    name                 = "Public-Sub"
    virtual_network_name = "vnet2-dev"
    resource_group_name  = "rg-dev"
    address_prefixes     = ["10.2.1.0/24"]
  }

  vnet2_PvtSub = {
    name                 = "Private-Sub"
    virtual_network_name = "vnet2-dev"
    resource_group_name  = "rg-dev"
    address_prefixes     = ["10.2.2.0/24"]
  }

  AzureBastionSubnet_vnet1 = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "vnet1-dev"
    resource_group_name  = "rg-dev"
    address_prefixes     = ["10.1.145.0/26"]
  }

  AzureBastionSubnet_vnet2 = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "vnet2-dev"
    resource_group_name  = "rg-dev"
    address_prefixes     = ["10.2.145.0/26"]
  }
}

NIC_details = {
  NIC-1 = {
    NIC_name       = "NIC-vnet1-pubsub"
    resource_group = "rg-dev"
    location       = "Central India"
    ip_name        = "internal"
    subnet_name    = "vnet1_PubSub"
  }

  NIC-2 = {
    NIC_name       = "NIC-vnet1-pvtsub"
    resource_group = "rg-dev"
    location       = "Central India"
    ip_name        = "internal"
    subnet_name    = "vnet1_PvtSub"
  }

  NIC-3 = {
    NIC_name       = "NIC-vnet2-pubsub"
    resource_group = "rg-dev"
    location       = "Central India"
    ip_name        = "internal"
    subnet_name    = "vnet2_PubSub"
  }

  NIC-4 = {
    NIC_name       = "NIC-vnet2-pvtsub"
    resource_group = "rg-dev"
    location       = "Central India"
    ip_name        = "internal"
    subnet_name    = "vnet2_PvtSub"
  }

}

PUbIP_details = {
  pub_1 = {
    name           = "public_ip1"
    location       = "central India"
    resource_group = "rg-dev"
    env            = "public_bastionServer"
  }

  pub_2 = {
    name           = "public_ip2"
    location       = "central India"
    resource_group = "rg-dev"
    env            = "public_bastionServer"
  }
}

bastion_details = {
  bastion_1 = {
    name           = "Bastion_server_vnet1"
    location       = "central India"
    resource_group = "rg-dev"
    bastion_config = "mybastionConfig"
    publicIp       = "pub_1"
    subnet_name    = "AzureBastionSubnet_vnet1"
  }

  bastion_2 = {
    name           = "Bastion_server_vnet2"
    location       = "central India"
    resource_group = "rg-dev"
    bastion_config = "mybastionConfig"
    publicIp       = "pub_2"
    subnet_name    = "AzureBastionSubnet_vnet2"
  }
}

vm_details = {
  VM-1 = {
    name           = "linuxVM1"
    location       = "Central India"
    resource_group = "rg-dev"
    vm_size        = "Standard_B2ats_v2"
    network_name   = "NIC-1"
    publisher      = "Canonical"
    sku            = "22_04-daily-lts-gen2"
    offer          = "0001-com-ubuntu-server-jammy-daily"
  }

  VM-2 = {
    name           = "linuxVM2"
    location       = "Central India"
    resource_group = "rg-dev"
    vm_size        = "Standard_B2ats_v2"
    network_name   = "NIC-2"
    publisher      = "Canonical"
    sku            = "22_04-daily-lts-gen2"
    offer          = "0001-com-ubuntu-server-jammy-daily"
  }
}

windows_server = {
  windows_server1 = {
    name              = "WindowsVM1"
    location          = "Central India"
    resource_group    = "rg-dev"
    size              = "Standard_B2ats_v2"
    network_interface = "NIC-3"
    publisher         = "MicrosoftWindowsServer"
    offer             = "WindowsServer"
    sku               = "2022-datacenter-azure-edition"
  }

  windows_server2 = {
    name              = "WindowsVM2"
    location          = "Central India"
    resource_group    = "rg-dev"
    size              = "Standard_B2ats_v2"
    network_interface = "NIC-4"
    publisher         = "MicrosoftWindowsServer"
    offer             = "WindowsServer"
    sku               = "2022-datacenter-azure-edition"
  }
}

vnetPeering_details = {
  vnetPeering1 = {
    name = "vnet1-to-vnet2"
    resource_group = "rg-dev"
    virtual_network_name = "vnet1-dev"
    remote_virtual_network_id = "vnet2-dev"
  }
}
