
resource "azurerm_network_security_group" "nsgs" {

  for_each            = var.nsg
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg-lists[each.value.rgt].name
  location            = azurerm_resource_group.rg-lists[each.value.rgt].location

}
