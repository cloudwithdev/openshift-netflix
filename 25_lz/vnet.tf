
resource "azurerm_virtual_network" "vnet_list" {
  for_each            = var.vnet_list
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_prod[each.value.rgt].name
  location            = azurerm_resource_group.rg_prod[each.value.rgt].location
  address_space       = each.value.add

}
