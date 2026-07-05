

resource "azurerm_public_ip" "bastin_pip" {
  for_each            = var.pip
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_names[each.value.rgt].name
  location            = azurerm_resource_group.rg_names[each.value.rgt].location
  allocation_method   = each.value.all
  sku                 = each.value.sku

}
