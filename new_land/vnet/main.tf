resource "azurerm_virtual_network" "vnets" {
  
  for_each = var.vnets
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.rgt
  address_space = each.value.add
}