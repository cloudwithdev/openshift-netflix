resource "azurerm_network_interface_security_group_association" "nic_nsg_ass" {
  for_each = var.nicnsgrule

  network_interface_id      = azurerm_network_interface.nics[each.value.nid].id
  network_security_group_id = azurerm_network_security_group.nsg_group[each.value.nsg].id
}
