resource "azurerm_resource_group" "rg_blcok" {
  for_each = var.rgs_var
  name = each.key
  location = each.value

}