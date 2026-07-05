resource "azurerm_resource_group" "child_rg_lab" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}
