
resource "azurerm_virtual_network" "cloudnova_vnets" {
  for_each = var.rg_vnet
  name = each.value.name
  location = each.value.loc
  resource_group_name = each.value.rgt
  address_space = each.value.add

}