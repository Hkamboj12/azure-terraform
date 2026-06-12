module "rg" {
    source = "../modules/resource_group"
    rg_details = var.rg_details
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../modules/vnet"
    vnet_details = var.vnet_details
}

module "subnet" {
    depends_on = [ module.vnet ]
    source = "../modules/subnet"
    sub_details = var.sub_details 
}

module "NIC" {
    depends_on = [ module.subnet ]
    source = "../modules/network_interface_card"
    NIC_details = var.NIC_details
    subnet_id = module.subnet.subnet_id  
}

module "Public_ip" {
    depends_on = [ module.rg ]
    source = "../modules/public_IP"
    PUbIP_details =  var.PUbIP_details
}

module "Bastion_servers" {   
    source = "../modules/Azure_bastion_host"
    bastion_details = var.bastion_details
    subnet_id = module.subnet.subnet_id
    public_IP = module.Public_ip.public_ip
}

module "VM" {
    source = "../modules/VM"
    VM_details = var.VM_details
    NIC_id = module.NIC.NIC_id
}

module "vnet_peering" {
    source = "../modules/Vnet_peering"
    vnet_peering_details = var.vnet_peering_details
    Vnet_id = module.vnet.vnet_id
}