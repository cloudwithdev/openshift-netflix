
rg_list = {
  prod_rg = {
    name     = "prod_webapp_rg"
    location = "east asia"
  }
}


########################################

vnet_list = {
  prod_vnet = {

    name = "prod_webapp_vnet"
    rgt  = "prod_rg"
    add  = ["10.0.0.0/16"]

  }
}



##################################

web_app_subnet = {
  frontend_webapp_subnet = {

    name = "frontend_web_subnet"
    rgt  = "prod_rg"
    vnet = "prod_vnet"
    add  = ["10.0.1.0/24"]
  }
}


####################################

nsg_web = {
  webapp_nsg = {
    name = "webapp_nsg_group"
    rgt  = "prod_rg"


  }
}



######################################

webapp_nic = {

  web_nic = {

    name = "webapp_frontend_nic"
    rgt  = "prod_rg"
    ip_pvt = {
      name       = "webapp_private_ip"
      private_ip = "Dynamic"
      subnet     = "frontend_webapp_subnet"
    }
  }

}


###########

nsg_nic_asso = {

  nsg_nic = {

    nic = "web_nic"
    nsg = "webapp_nsg"
  }
}

###################################################

pip = {
  bastin_pip = {
    name = "bastin_public_ip"
    rgt  = "prod_rg"
    all  = "Static"
    sku  = "Standard"
  }
}


############################

bastin = {
  bastin_sub = {

    name = "AzureBastionSubnet"
    vnet = "prod_vnet"
    rgt  = "prod_rg"
    add  = ["10.0.2.0/26"]

  }
}

bastin_host = {
  web_bastin = {

    name = "prod-bastin"
    rgt  = "prod_rg"

    ip = {
      name   = "configuration"
      bastin = "bastin_sub"
      pip    = "bastin_pip"
    }
  }
}



#######################################


vms = {
  webapp_front_vm = {
    name       = "webapp-frontapp-vm1"
    location   = "east asia"
    rgt        = "prod_rg"
    nic        = "web_nic"
    vmsize     = "Standard_D2s_v3"
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


  webapp_vm2 = {
    name       = "webapp-frontapp-vm2"
    location   = "east asia"
    rgt        = "prod_rg"
    nic        = "web_nic"
    vmsize     = "Standard_D2s_v3"
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
