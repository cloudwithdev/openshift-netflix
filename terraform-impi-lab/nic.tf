resource "azurerm_network_interface" "nics" {
  for_each            = var.nicsrg
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg_list[each.value.rgt].name
  location            = each.value.location

  ip_configuration {
    name                          = each.value.ip_conf.name
    subnet_id                     = each.value.ip_conf.subnet
    private_ip_address_allocation = each.value.ip_conf.pvt-ip

  }
}