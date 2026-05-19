resource "azurerm_resource_group" "rg" {
  for_each = var.module-rg
  name     = each.value.name
  location = each.value.location
  tags = {
    resource_type = each.value.resource_type
  }
}