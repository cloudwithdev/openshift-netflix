
resource "azurerm_subnet" "bastion_subnet" {
  for_each             = var.bastin
  name                 = each.value.name
  virtual_network_name = azurerm_virtual_network.vnet_prod[each.value.vnet].name
  resource_group_name  = azurerm_resource_group.rg_names[each.value.rgt].name
  address_prefixes     = each.value.add
}


resource "azurerm_bastion_host" "bastin_host" {
  for_each            = var.bastin_host
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_names[each.value.rgt].name
  location            = azurerm_resource_group.rg_names[each.value.rgt].location


  ip_configuration {
    name                 = each.value.ip.name
    subnet_id            = azurerm_subnet.bastion_subnet[each.value.ip.bastin].id
    public_ip_address_id = azurerm_public_ip.bastin_pip[each.value.ip.pip].id
  }

}
