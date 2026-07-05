resource "azurerm_network_security_group" "nsg_group" {
  for_each            = var.nsgs
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgt


}

resource "azurerm_network_security_rule" "nsg_rules_ssh" {
  for_each                    = var.rules
  name                        = each.value.name
  resource_group_name         = azurerm_resource_group.rg_list[each.value.rgt].name
  network_security_group_name = azurerm_network_security_group.nsg_group[each.value.nsgn].name
  access                      = each.value.access
  direction                   = each.value.direction
  protocol                    = each.value.protocol
  priority                    = each.value.priority
  source_port_range           = each.value.source_port_range
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = each.value.source_address_prefix
  destination_address_prefix  = each.value.destination_address_prefix

}






