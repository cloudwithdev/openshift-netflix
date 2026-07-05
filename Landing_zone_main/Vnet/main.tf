resource "azurerm_virtual_network" "vnet_ld" {
    for_each = var.vnet
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rgt
    address_space = each.value.add

}