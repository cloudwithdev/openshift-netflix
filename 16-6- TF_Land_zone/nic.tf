

resource "azurerm_network_interface" "web_nic" {
  for_each = var.webapp_nic

  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_names[each.value.rgt].name
  location            = azurerm_resource_group.rg_names[each.value.rgt].location

  ip_configuration {
    name                          = each.value.ip_pvt.name
    private_ip_address_allocation = each.value.ip_pvt.private_ip
    subnet_id                     = azurerm_subnet.web_app_subnet[each.value.ip_pvt.subnet].id
  }
}
