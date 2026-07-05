vnet_peering = {

  centralindia-to-eastasia = {
    name                  = "centralindia-to-eastasia"
    resource_group_name   = "cloudnova-centralindia-rg"
    virtual_network_name  = "cloudnova_prod_vnet"
    remote_virtual_network_id = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-eastasia-rg/providers/Microsoft.Network/virtualNetworks/cloudnova_prod_backup_vnet"
  }

  eastasia-to-centralindia = {
    name                  = "eastasia-to-centralindia"
    resource_group_name   = "cloudnova-eastasia-rg"
    virtual_network_name  = "cloudnova_prod_backup_vnet"
    remote_virtual_network_id = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-centralindia-rg/providers/Microsoft.Network/virtualNetworks/cloudnova_prod_vnet"
  }
}