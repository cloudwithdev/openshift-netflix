resource "azurerm_subnet" "web_app_subnet" {
  for_each             = var.web_app_subnet
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg_names[each.value.rgt].name
  virtual_network_name = azurerm_virtual_network.vnet_prod[each.value.vnet].name
  address_prefixes     = each.value.add
}


