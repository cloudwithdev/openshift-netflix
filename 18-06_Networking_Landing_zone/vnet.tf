
resource "azurerm_virtual_network" "vnets" {
  for_each            = var.webapp_vnet
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg-lists[each.value.rgt].name
  location            = azurerm_resource_group.rg-lists[each.value.rgt].location
  address_space       = each.value.add


}
