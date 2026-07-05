resource "azurerm_resource_group" "rglist" {
  
  for_each = var.rg_list
  name = each.key
  location = each.value

}

