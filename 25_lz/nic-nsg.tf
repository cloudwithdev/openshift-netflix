
resource "azurerm_network_interface_security_group_association" "nic_nsg_map" {
   for_each = var.nic_nsg_list
   
   network_interface_id = azurerm_network_interface.nic_list[each.value.nic].id
   network_security_group_id = azurerm_network_security_group.nsg_rule[each.value.nsg].id
}
