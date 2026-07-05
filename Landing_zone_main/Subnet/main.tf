
resource "azurerm_subnet" "indsub" {
  for_each = var.subnets
  name = each.value.name
  resource_group_name = each.value.rgt
  virtual_network_name = each.value.vnet
  address_prefixes = each.value.add

}