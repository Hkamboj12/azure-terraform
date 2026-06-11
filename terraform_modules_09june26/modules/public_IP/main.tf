resource "azurerm_public_ip" "pIP" {
    for_each = var.PUbIP_details
    name = each.value.name
    resource_group_name = each.value.resource_group
    location = each.value.location
    allocation_method = "Static"
    tags = {
      env = each.value.env
    }
}
