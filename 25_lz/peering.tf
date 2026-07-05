resource "azurerm_virtual_network_peering" "peeering" {

  for_each                  = var.peering_list
  name                      = each.value.name
  resource_group_name       = azurerm_resource_group.rg_prod[each.value.rgt].name
  virtual_network_name      = azurerm_virtual_network.vnet_list[each.value.vname].name
  remote_virtual_network_id = azurerm_virtual_network.vnet_list[each.value.vnet].id


}
