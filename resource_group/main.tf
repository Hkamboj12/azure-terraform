resource "azurerm_resource_group" "rg-1" {
    name = "Himanshu-rg"
    location = "Central India"

    tags ={
        env = "vnet-peering"
    }  
}

# resource "azurerm_virtual_network" "vnet" {
#     name                = "vnet-rg"
#     address_space       = ["10.0.0.0/16"]
#     location            = azurerm_resource_group.rg-1.location
#     resource_group_name = azurerm_resource_group.rg-1.name

#     tags = {
#         env = "vnet-peering"
#     }
# }

# resource "azurerm_subnet" "public_subnet" {
#     name                 = "public-subnet"
#     resource_group_name  = azurerm_resource_group.rg-1.name
#     virtual_network_name = azurerm_virtual_network.vnet.name
#     address_prefixes     = ["10.0.1.0/24"]
# }

# resource "azurerm_subnet" "private_subnet" {
#     name                 = "private-subnet"
#     resource_group_name  = azurerm_resource_group.rg-1.name
#     virtual_network_name = azurerm_virtual_network.vnet.name
#     address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_subnet" "bastion_subnet" {
#     name                 = "AzureBastionSubnet"
#     resource_group_name  = azurerm_resource_group.rg-1.name
#     virtual_network_name = azurerm_virtual_network.vnet.name
#     address_prefixes     = ["10.0.3.0/26"]
# }

# resource "azurerm_public_ip" "bastion_pip" {
#     name                = "bastion-pip"
#     location            = azurerm_resource_group.rg-1.location
#     resource_group_name = azurerm_resource_group.rg-1.name
#     allocation_method   = "Static"
#     sku                 = "Standard"

#     tags = {
#         env = "vnet-peering"
#     }
# }

# resource "azurerm_bastion_host" "bastion" {
#     name                = "bastion-host"
#     location            = azurerm_resource_group.rg-1.location
#     resource_group_name = azurerm_resource_group.rg-1.name

#     ip_configuration {
#         name                 = "configuration"
#         subnet_id            = azurerm_subnet.bastion_subnet.id
#         public_ip_address_id = azurerm_public_ip.bastion_pip.id
#     }

#     tags = {
#         env = "vnet-peering"
#     }
# }

# resource "azurerm_network_interface" "nic" {
#     name                = "vm-nic"
#     location            = azurerm_resource_group.rg-1.location
#     resource_group_name = azurerm_resource_group.rg-1.name

#     ip_configuration {
#         name                          = "testconfiguration1"
#         subnet_id                     = azurerm_subnet.public_subnet.id
#         private_ip_address_allocation = "Dynamic"
#     }

#     tags = {
#         env = "vnet-peering"
#     }
# }

# resource "azurerm_linux_virtual_machine" "VM" {
#     name                = "linux-vm"
#     resource_group_name = azurerm_resource_group.rg-1.name
#     location            = azurerm_resource_group.rg-1.location
#     size                = "Standard_DS1_v2"
#     admin_username      = "azureuser"
#     network_interface_ids = [
#         azurerm_network_interface.nic.id,
#         azurerm_subnet.public_subnet.id
#     ]

#     admin_ssh_key {
#         username   = "azureuser"
#         public_key = file("~/.ssh/id_rsa.pub")
#     }

#     os_disk {
#         caching              = "ReadWrite"
#         storage_account_type = "Standard_LRS"
#     }

#     source_image_reference {
#         publisher = "Canonical"
#         offer     = "UbuntuServer"
#         sku       = "18.04-LTS"
#         version   = "latest"
#     }

#     tags = {
#         env = "vnet-peering"
#     }  
# }

# resource "azurerm_resource_group" "name" {
    
  
# }