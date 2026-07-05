resource "azurerm_virtual_network" "vnets" {

  for_each            = var.finpayvnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rglist[each.value.rgt].name
  address_space       = each.value.add

}
