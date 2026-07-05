
resource "azurerm_virtual_network" "shared_vnet" {

  for_each            = var.vnet_list
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_list[each.value.rgt].name
  location            = azurerm_resource_group.rg_list[each.value.rgt].location
  address_space       = each.value.add
}
