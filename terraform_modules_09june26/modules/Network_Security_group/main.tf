resource "azurerm_network_security_group" "NSG" {
    name = ""
    location = ""
    resource_group_name =  ""

    security_rule  {
        name = "Allow-ssh-from-bastion"
        priority = "300"
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range  = "22"
        source_address_prefix = ""
        destination_address_prefix = "*"
    }

    security_rule  {
        name = ""
        priority = "300"
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range  = "22"
        source_address_prefix = ""

    }
}