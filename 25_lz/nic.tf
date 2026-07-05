
resource "azurerm_network_interface" "nic_list" {
  for_each            = var.nic_list
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_prod[each.value.rgt].name
  location            = azurerm_resource_group.rg_prod[each.value.rgt].location

  ip_configuration {
    name                          = each.value.ip_conf.name
    private_ip_address_allocation = each.value.ip_conf.allocation
    subnet_id                     = azurerm_subnet.subnet_list[each.value.ip_conf.subnet].id

  }
}

