resource "azurerm_network_security_group" "nsg" {
  for_each = var.nsg

  name                = each.key
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_network_security_rule" "rule" {
  for_each = var.rules

  name                        = each.key
  priority                    = each.value.priority
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = each.value.protocol
  source_port_range           = "*"
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = "*"
  destination_address_prefix  = "*"

  resource_group_name         = each.value.resource_group_name
  network_security_group_name = each.value.nsg_name
}