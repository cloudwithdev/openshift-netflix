resource "azurerm_resource_group" "rgs_list" {
  
  for_each = var.rgs
  name = each.key
  location = each.value
}