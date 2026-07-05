resource "azurerm_network_interface" "nics_rg" {
  for_each = var.nics
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.rgt
  

  ip_configuration {
    name = each.value.ip_config.name
    subnet_id = each.value.ip_config.subnet_id
    private_ip_address_allocation = each.value.ip_config.private_ip
    public_ip_address_id = each.value.ip_config.public_ip


  }


}