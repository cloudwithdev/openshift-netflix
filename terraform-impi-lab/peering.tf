resource "azurerm_virtual_network_peering" "peeering" {
  
  for_each = var.vnetpeering
  name = each.value.name
  resource_group_name = azurerm_resource_group.rg_list[each.value.rgt].name
  virtual_network_name = each.value.vname
  remote_virtual_network_id = azurerm_virtual_network.vnets[each.value.rvnid].id


}