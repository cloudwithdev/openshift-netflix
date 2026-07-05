resource "azurerm_virtual_network" "rg_vnet" {
  
    for_each = var.vnet_list
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rgt
    address_space = each.value.add

}