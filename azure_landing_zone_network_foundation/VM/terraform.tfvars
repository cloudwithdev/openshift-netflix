vms = {
  cloudnovaprodvm ={
    name = "cloudnovaprodvm"
    location = "central india"
    rgt = "cloudnova-centralindia-rg"
    nic = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-centralindia-rg/providers/Microsoft.Network/networkInterfaces/cloudnova_prod_centralindia_nic"
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


  cloudnovaprodvm_east ={
    name = "cloudnovaprodbackupvm"
    location = "east asia"
    rgt = "cloudnova-eastasia-rg"
    nic = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/cloudnova-eastasia-rg/providers/Microsoft.Network/networkInterfaces/cloudnova_prod_back_eastasia_nic"
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