
resource "azurerm_network_interface" "nics" {
  for_each            = var.nics
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg-lists[each.value.rgt].name
  location            = azurerm_resource_group.rg-lists[each.value.rgt].location


  ip_configuration {
    private_ip_address_allocation = each.value.ip.prip
    subnet_id                     = azurerm_subnet.subnets_webapp[each.value.ip.subnet].id
    name                          = each.value.ip.name
  }

}
