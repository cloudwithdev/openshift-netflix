
resource "azurerm_network_interface_security_group_association" "nic_nsg" {

  for_each                  = var.nic_nsg
  network_interface_id      = azurerm_network_interface.nics[each.value.nic_id].id
  network_security_group_id = azurerm_network_security_group.finpaynsgs[each.value.nsg_id].id


}
