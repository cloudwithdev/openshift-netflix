resource "azurerm_resource_group" "rg_list" {

    for_each = var.rg_var
    name = each.key
    location = each.value
}