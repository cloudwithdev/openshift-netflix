
resource "azurerm_subnet" "subnets_webapp" {
  for_each = var.subnets

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg-lists[each.value.rgt].name
  virtual_network_name = azurerm_virtual_network.vnets[each.value.vnet].name
  address_prefixes     = each.value.add

}
