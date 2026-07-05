
resource "azurerm_subnet" "subnet_list" {
  for_each = var.subnet_list

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg_list[each.value.rgt].name
  virtual_network_name = azurerm_virtual_network.shared_vnet[each.value.vnet].name
  address_prefixes     = each.value.add

}
