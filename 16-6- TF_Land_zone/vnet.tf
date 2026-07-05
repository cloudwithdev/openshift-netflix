
resource "azurerm_virtual_network" "vnet_prod" {
  for_each            = var.vnet_list
  name                = each.value.name
  location            = azurerm_resource_group.rg_names[each.value.rgt].location
  resource_group_name = azurerm_resource_group.rg_names[each.value.rgt].name
  address_space       = each.value.add
}
