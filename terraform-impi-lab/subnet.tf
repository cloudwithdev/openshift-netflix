resource "azurerm_subnet" "subnets" {

  for_each             = var.subnet
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg_list[each.value.rgt].name
  virtual_network_name = azurerm_virtual_network.vnets[each.value.vnet].name
  address_prefixes     = each.value.add

}