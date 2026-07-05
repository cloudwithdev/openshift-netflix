resource "azurerm_public_ip" "cloudnova_pip" {
  for_each = var.cloudnova_public_ip
  name = each.value.name
  location = each.value.loc
  resource_group_name = each.value.rgt
  allocation_method = each.value.type
}