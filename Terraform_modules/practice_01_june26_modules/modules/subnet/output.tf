output "subnet_id" {
  value = {
    for sub_name, sub_value in azurerm_subnet.sub :
    sub_name => sub_value.id
  }
}