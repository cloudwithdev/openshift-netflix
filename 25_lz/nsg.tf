
resource "azurerm_network_security_group" "nsg_rule" {
  for_each            = var.nsg_list
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_prod[each.value.rgt].name
  location            = azurerm_resource_group.rg_prod[each.value.rgt].location
}

