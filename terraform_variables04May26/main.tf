# assign value to the resource group using string 
resource "azurerm_resource_group" "rg-string" {
    name = var.rg-string
    location = var.location
}


# assign List value to this resource group using for_each loop 
resource "azurerm_resource_group" "rg-list" {
  for_each = toset(var.rg-list)
  name = each.value
  location = var.location
}


# assign list value using count loop 

resource "azurerm_resource_group" "rg-listCount" {
    count = length(var.rg-listCount)
    name =  var.rg-listCount[count.index]
    location = var.location
}
