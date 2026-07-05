
resource "azurerm_public_ip" "pubs" {
  
  for_each = var.publicip
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.rgt
  allocation_method = each.value.allocation_method
}