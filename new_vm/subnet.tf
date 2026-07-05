
resource "azurerm_subnet" "rg_subnet" {
  
  for_each = var.subvnet_list
  name = each.value.name
  resource_group_name = each.value.rgt
  virtual_network_name = each.value.vnet
  address_prefixes = each.value.add

}
