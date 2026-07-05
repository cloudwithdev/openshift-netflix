
resource "azurerm_subnet" "finpaysubnets" {
  for_each = var.finpaysubnet

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rglist[each.value.rgt].name
  virtual_network_name = azurerm_virtual_network.vnets[each.value.vnet].name
  address_prefixes     = each.value.add

}
