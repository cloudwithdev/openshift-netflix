variable "nsg_nic_asso" {
  type = map(any)
}

resource "azurerm_network_interface_security_group_association" "nsg_nic" {
  for_each                  = var.nsg_nic_asso
  network_interface_id      = azurerm_network_interface.web_nic[each.value.nic].id
  network_security_group_id = azurerm_network_security_group.name[each.value.nsg].id

}
