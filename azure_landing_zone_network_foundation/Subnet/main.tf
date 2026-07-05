resource "azurerm_subnet" "cloudnova_subnets" {
  
   for_each = var.cloudnova_subnet
   name = each.value.name
   virtual_network_name = each.value.vnet
   resource_group_name = each.value.rgt
   address_prefixes = each.value.add
}