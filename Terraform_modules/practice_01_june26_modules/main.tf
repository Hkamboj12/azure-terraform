module "rg" {
  source = "./modules/resource_group"

  resource_group = {
    rg1 = {
      name        = "rg-dev"
      location    = "central India"
      environment = "dev"
    }
  }
}

module "vnets" {
  depends_on = [module.rg]
  source     = "./modules/vnet"

  vnet = {
    vnet1 = {
      name           = "vnet-1"
      location       = "Central India"
      resource_group = "rg-dev"
      address_space  = ["10.0.0.0/16"]
    }
    vnet2 = {
      name           = "vnet-2"
      location       = "Central India"
      resource_group = "rg-dev"
      address_space  = ["11.0.0.0/16"]
    }
  }
}

module "subnets" {
    depends_on = [ module.vnets ]
    source = "./modules/subnet"

    subnet = {
      sub1 ={
        name = "frontend"
        vnet = "vnet-1"
        resource_group = "rg-dev"
        subnet_range = ["10.0.1.0/24"]
      }
      sub2 ={
        name = "backend"
        vnet = "vnet-1"
        resource_group = "rg-dev"
        subnet_range = ["10.0.2.0/24"]
      }
      sub3 ={
        name = "databace"
        vnet = "vnet-1"
        resource_group = "rg-dev"
        subnet_range = ["10.0.3.0/24"]
      }

      sub4 ={
        name = "frontend"
        vnet = "vnet-2"
        resource_group = "rg-dev"
        subnet_range = ["11.0.1.0/24"]
      }
      sub5 ={
        name = "backend"
        vnet = "vnet-2"
        resource_group = "rg-dev"
        subnet_range = ["11.0.2.0/24"]
      }
      sub6 ={
        name = "database"
        vnet = "vnet-2"
        resource_group = "rg-dev"
        subnet_range = ["11.0.3.0/24"]
      }
    }
}

module "NIC" {
    depends_on = [ module.rg,module.subnets,module.vnets ]
    source = "./modules/nic" 

    Private-NIC = {
        FrontSubVnet1 = {
            name = "front-pvtNIC1"
            location = "Central India"
            rg = "rg-dev"
            ipconfigname = "frontend"
            subid = module.subnets.subnet_id["sub1"]
            pvtIpAddrAllc = "Dynamic"
        }
        BackendSubVnet1 = {
            name = "backend-pvtNIC1"
            location = "Central India"
            rg = "rg-dev"
            ipconfigname = "Backend"
            subid = module.subnets.subnet_id["sub2"]
            pvtIpAddrAllc = "Dynamic"
        }
        DatabaseSubVnet1 = {
            name = "DB-pvtNIC1"
            location = "Central India"
            rg = "rg-dev"
            ipconfigname = "DB"
            subid = module.subnets.subnet_id["sub3"]
            pvtIpAddrAllc = "Dynamic"
        }
        frontSubVnet2 = {
            name = "front-pvtNIC2"
            location = "Central India"
            rg = "rg-dev"
            ipconfigname = "fronent"
            subid = module.subnets.subnet_id["sub4"]
            pvtIpAddrAllc = "Dynamic"
        }
        BackendSubVnet2 = {
            name = "backend-pvtNIC2"
            location = "Central India"
            rg = "rg-dev"
            ipconfigname = "Backend"
            subid = module.subnets.subnet_id["sub5"]
            pvtIpAddrAllc = "Dynamic"
        }
        DBSubVnet2 = {
            name = "DB-pvtNIC2"
            location = "Central India"
            rg = "rg-dev"
            ipconfigname = "DB"
            subid = module.subnets.subnet_id["sub6"]
            pvtIpAddrAllc = "Dynamic"
        }
    }  
}

