resource "azurerm_bastion_host" "bastion_host" {
    for_each = var.bastion_details
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group
  sku                 = "Standard"

  ip_configuration {
    name                 = each.value.bastion_config
    subnet_id            = var.subnet_id[each.value.subnet_name]
    public_ip_address_id = var.public_IP[each.value.publicIp]
  }
}