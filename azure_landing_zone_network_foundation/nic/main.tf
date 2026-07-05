resource "azurerm_network_interface" "cloudnova_nic" {
      
      for_each = var.nic
      name = each.value.name
      location = each.value.location
      resource_group_name = each.value.rgt
      

      ip_configuration {
        name = each.value.ip_configuration.name
        private_ip_address_allocation = each.value.ip_configuration.prip
        public_ip_address_id = each.value.ip_configuration.pip
        subnet_id = each.value.ip_configuration.subnet

      }

      



}