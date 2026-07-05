
resource "azurerm_network_interface" "nics" {

  for_each            = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rglist[each.value.rgt].name

  ip_configuration {
    name                          = each.value.ipconfig.name
    subnet_id                     = azurerm_subnet.finpaysubnets[each.value.ipconfig.subnet].id
    private_ip_address_allocation = each.value.ipconfig.pvtip

  }
}
