#################RG###################
finpaysrg = {
  app-rg-prd = {
    name     = "finpay-prod-app-rg"
    location = "east asia"
  }

  shared-rg-prd = {
    name     = "finpay-prod-shared-rg"
    location = "Japan east"
  }
}


#################Vnet##################

finpayvnet = {

  app-core-vnet = {
    name     = "finpay-app-core-vnet"
    location = "east asia"
    rgt      = "app-rg-prd"
    add      = ["10.50.0.0/16"]

  }

  shared-services-vnet = {
    name     = "finpay-shared-services-vnet"
    location = "Japan east"
    rgt      = "shared-rg-prd"
    add      = ["10.60.0.0/16"]

  }
}


###########################subnet#############################

finpaysubnet = {
  web-tier-subnet = {
    name = "web-tier-snet"
    rgt  = "app-rg-prd"
    vnet = "app-core-vnet"
    add  = ["10.50.1.0/24"]

  }

  app-tier-subnet = {
    name = "app-tier-snet"
    rgt  = "app-rg-prd"
    vnet = "app-core-vnet"
    add  = ["10.50.2.0/24"]

  }

  mgmt-tier-subnet = {
    name = "mgmt-tier-snet"
    rgt  = "shared-rg-prd"
    vnet = "shared-services-vnet"
    add  = ["10.60.1.0/24"]

  }

}

###########################################################

nsg = {
  web-nsg-prd = {
    name = "finpay-web-nsg"
    rgt  = "app-rg-prd"

  }

  app-nsg-prd = {
    name = "finpay-app-nsg"
    rgt  = "app-rg-prd"

  }

  mgmt-nsg-prd = {
    name = "finpay-mgmt-nsg"
    rgt  = "shared-rg-prd"
  }

}

nsgrules = {

  web_nsg_rule = {

    name                       = "Web_NSG_ALLOW_22_80_443"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "80", "443"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    rgt                        = "app-rg-prd"
    nsg_grp_name               = "web-nsg-prd"

  }

  web_icmp_nsg_rule = {

    name                       = "ICMP"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    rgt                        = "app-rg-prd"
    nsg_grp_name               = "web-nsg-prd"

  }

  app_nsg_rule = {

    name                       = "APP_NSG_ALLOW_22_80_443"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "80", "443"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    rgt                        = "app-rg-prd"
    nsg_grp_name               = "app-nsg-prd"

  }

  app_icmp_nsg_rule = {

    name                       = "APP_ICMP"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    rgt                        = "app-rg-prd"
    nsg_grp_name               = "app-nsg-prd"

  }



  mgmt_nsg_rule = {

    name                       = "mgmt_NSG_ALLOW_22__3389"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "3389", ]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    rgt                        = "shared-rg-prd"
    nsg_grp_name               = "mgmt-nsg-prd"

  }
  mgmt_nsg_rule_icmp = {

    name                       = "ICMP"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    rgt                        = "shared-rg-prd"
    nsg_grp_name               = "mgmt-nsg-prd"

  }

}


####################

nic = {

  web01-nic-key = {
    name     = "finpay-web01-nic"
    location = "east asia"
    rgt      = "app-rg-prd"

    ipconfig = {
      name   = "finpay-web_pvt_ip"
      subnet = "web-tier-subnet"
      pvtip  = "Dynamic"
    }
  }


  app01-nic-key = {
    name     = "finpay-app01-nic"
    location = "east asia"
    rgt      = "app-rg-prd"

    ipconfig = {
      name   = "finpay-app_pvt_ip"
      subnet = "app-tier-subnet"
      pvtip  = "Dynamic"
    }
  }

  mgmt01-nic-key = {
    name     = "finpay-mgmt01-nic"
    location = "Japan east"
    rgt      = "shared-rg-prd"

    ipconfig = {
      name   = "finpay_mgmt-1_pvt_ip"
      subnet = "mgmt-tier-subnet"
      pvtip  = "Dynamic"
    }
  }

}


################################################################

nic_nsg = {
  app_nic_nsg = {
    nic_id = "app01-nic-key"
    nsg_id = "app-nsg-prd"
  }

  mgmt_nic_nsg = {
    nic_id = "mgmt01-nic-key"
    nsg_id = "mgmt-nsg-prd"
  }

  web_nic_nsg = {
    nic_id = "web01-nic-key"
    nsg_id = "web-nsg-prd"
  }
}









########################################




vms = {
  web01-vm-key = {
    name       = "finpayweb01"
    location   = "east asia"
    rgt        = "app-rg-prd"
    nic        = "web01-nic-key"
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


  app01-vm-key = {
    name       = "finpayapp01"
    location   = "east asia"
    rgt        = "app-rg-prd"
    nic        = "app01-nic-key"
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

  mgmt01-vm-key = {
    name       = "finpaymgmt01"
    location   = "Japan east"
    rgt        = "shared-rg-prd"
    nic        = "mgmt01-nic-key"
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
