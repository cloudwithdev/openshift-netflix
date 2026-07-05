resource "azurerm_public_ip" "pub" {

 for_each = var.pubby
 name = each.value.name
 location = each.value.loc
 resource_group_name = each.value.rgt   
 allocation_method = each.value.alm

}