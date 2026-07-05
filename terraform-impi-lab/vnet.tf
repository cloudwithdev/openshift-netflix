resource "azurerm_virtual_network" "vnets" {

  for_each            = var.vnets
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rg_list[each.value.rgt].name
  address_space       = each.value.add
}