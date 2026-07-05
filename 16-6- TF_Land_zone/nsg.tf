
resource "azurerm_network_security_group" "name" {
  for_each            = var.nsg_web
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_names[each.value.rgt].name
  location            = azurerm_resource_group.rg_names[each.value.rgt].location

}

