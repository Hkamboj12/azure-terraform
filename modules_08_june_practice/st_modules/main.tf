resource "azurerm_storage_account" "st-dev" {
    for_each = var.storage_details
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg
    account_tier             = each.value.acc_tier
  account_replication_type = each.value.acc_rp_type
}