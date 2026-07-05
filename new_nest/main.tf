resource "azurerm_resource_group" "rgs_auto" {
  
  for_each = var.rg_var
  name = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  tags = each.value.tags 

}


resource "azurerm_virtual_network" "vnets" {
  for_each = var.vnet_meaww
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.rgt
  address_space = each.value.add


}