resource "azurerm_resource_group" "rglist" {
  
  for_each = var.rgs
  name = each.key
  location = each.value
}