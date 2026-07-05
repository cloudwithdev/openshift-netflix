vms = {
  india_rg_vm ={
    name = "Indiavmregion"
    location = "central india"
    rgt = "landing_zone_zone1"
    nic = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/landing_zone_zone1/providers/Microsoft.Network/networkInterfaces/indianic"
    vmsize = "Standard_D2s_v3"
    admin_user = "testvm"
    admin_pass = "Acer@123456789"
    image = {
      publisher = "Canonical"
      offer     = "ubuntu-24_04-lts"
      sku       = "server"
      version   = "latest"
    }
      os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
  }


  eastasia_rg_vm ={
    name = "eastasiavmregion"
    location = "east asia"
    rgt = "landing_zone_zone2"
    nic = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/landing_zone_zone2/providers/Microsoft.Network/networkInterfaces/eastasiaanic"
    vmsize = "Standard_D2s_v3"
    admin_user = "testvm"
    admin_pass = "Acer@123456789"
    image = {
      publisher = "Canonical"
      offer     = "ubuntu-24_04-lts"
      sku       = "server"
      version   = "latest"

    }

      os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
  }


}