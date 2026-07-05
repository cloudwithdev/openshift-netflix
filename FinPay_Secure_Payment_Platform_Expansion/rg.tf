

resource "azurerm_resource_group" "rglist" {
  for_each = var.finpaysrg
  name     = each.value.name
  location = each.value.location
}
