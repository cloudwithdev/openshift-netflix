nic = {
  
  cloudnova-centralindia_nic ={
      
    name = "cloudnova_prod_centralindia_nic"
    location = "central india"
    rgt = "cloudnova-centralindia-rg"

    ip_configuration ={
        name = "cloudnova_prod_centralindia_private_ip"
        prip = "Dynamic"
        subnet = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-centralindia-rg/providers/Microsoft.Network/virtualNetworks/cloudnova_prod_vnet/subnets/cloudnova_prod_subnet"
        pip = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-centralindia-rg/providers/Microsoft.Network/publicIPAddresses/cloudnova_prod_central_india_public_ip"
    }
        

  }

 cloudnova-eastasia_nic ={
      
    name = "cloudnova_prod_back_eastasia_nic"
    location = "eastasia"
    rgt = "cloudnova-eastasia-rg"

    ip_configuration ={
        name = "cloudnova_prod_backup_eastasia_private_ip"
        prip = "Dynamic"
        subnet = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-eastasia-rg/providers/Microsoft.Network/virtualNetworks/cloudnova_prod_backup_vnet/subnets/cloudnova_prod_backup_subnet"
        pip = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-eastasia-rg/providers/Microsoft.Network/publicIPAddresses/cloudnova_prod_eastasia_india_public_ip"
    }


}

}