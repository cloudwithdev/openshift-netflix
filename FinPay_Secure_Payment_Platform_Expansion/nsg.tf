
resource "azurerm_network_security_group" "finpaynsgs" {
  for_each            = var.nsg
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rglist[each.value.rgt].name
  location            = azurerm_resource_group.rglist[each.value.rgt].location

}

resource "azurerm_network_security_rule" "finpaynsgrules" {
  for_each                    = var.nsgrules
  name                        = each.value.name
  resource_group_name         = azurerm_resource_group.rglist[each.value.rgt].name
  network_security_group_name = azurerm_network_security_group.finpaynsgs[each.value.nsg_grp_name].name
  priority                    = each.value.priority
  direction                   = each.value.direction
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_port_range           = each.value.source_port_range
  destination_port_range      = try(each.value.destination_port_range, null)
  destination_port_ranges     = try(each.value.destination_port_ranges, null)
  source_address_prefix       = each.value.source_address_prefix
  destination_address_prefix  = each.value.destination_address_prefix



}
