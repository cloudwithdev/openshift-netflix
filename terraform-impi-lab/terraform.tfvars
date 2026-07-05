#############rg#################

rg_list = {

  fc-app-rg  = "east asia"
  fc-mgmt-rg = "Japan east"
}

#############rg#################

vnets = {

  fc-app-vnet = {

    name     = "fc-app-vnet"
    location = "eastasia"
    rgt      = "fc-app-rg"
    add      = ["10.0.0.0/16"]

  }

  fc-mgmt-vnet = {

    name     = "fc-mgmt-vnet"
    location = "japan east"
    rgt      = "fc-mgmt-rg"
    add      = ["192.168.0.0/16"]

  }

}


#############rg#################
#############rg#################

subnet = {
  fc-app-subnet = {
    name = "fc-app-subnet"
    rgt  = "fc-app-rg"
    vnet = "fc-app-vnet"
    add  = ["10.0.1.0/24"]
  }
  fc-app-subnet = {
    name = "fc-app-subnet"
    rgt  = "fc-app-rg"
    vnet = "fc-app-vnet"
    add  = ["10.0.1.0/24"]
  }

  fc-mgmt-subnet = {
    name = "fc-mgmt-subnet"
    rgt  = "fc-mgmt-rg"
    vnet = "fc-mgmt-vnet"
    add  = ["192.168.1.0/24"]
  }


}

#############rg#################
#############rg#################

nsgs = {

  fc-app-grp_name = {

    name     = "fc-app-nsg_group"
    location = "east asia"
    rgt      = "fc-app-rg"

  }

  fc-mgmt-grp_name = {

    name     = "fc-mgmt-rules_group"
    location = "Japan east"
    rgt      = "fc-mgmt-rg"

  }



}

rules = {

  rules_ssh_app = {
    name                       = "SSH_ALLOW_Rule"
    rgt                        = "fc-app-rg"
    nsgn                       = "fc-app-grp_name"
    access                     = "Allow"
    direction                  = "Inbound"
    protocol                   = "Tcp"
    priority                   = 105
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"


  }

  rules_mgmt_ssh= {
    name                       = "SSH_ALLOW_Rule"
    rgt                        = "fc-mgmt-rg"
    nsgn                       = "fc-mgmt-grp_name"
    access                     = "Allow"
    direction                  = "Inbound"
    protocol                   = "Tcp"
    priority                   = 105
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }

  rules_icmp_mgmt = {
    name                       = "ICMP_ALLOW_Rule"
    rgt                        = "fc-mgmt-rg"
    nsgn                       = "fc-mgmt-grp_name"
    access                     = "Allow"
    direction                  = "Inbound"
    protocol                   = "Icmp"
    priority                   = 106
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"


  }

rules_icmp_app = {
    name                       = "ICMP_ALLOW_Rule"
    rgt                        = "fc-app-rg"
    nsgn                       = "fc-app-grp_name"
    access                     = "Allow"
    direction                  = "Inbound"
    protocol                   = "Icmp"
    priority                   = 106
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"


  }

}

#############rg#################


#############rg#################
nicsrg = {

  fc-app-nic = {
    name     = "fc-app-nic"
    rgt      = "fc-app-rg"
    location = "east asia"
    ip_conf = {
      name   = "fc-app-pvt_ip"
      subnet = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/fc-app-rg/providers/Microsoft.Network/virtualNetworks/fc-app-vnet/subnets/fc-app-subnet"
      pvt-ip = "Dynamic"
    }
  }

  fc-mgmt-nic = {
    name     = "fc-mgmt-nic"
    rgt      = "fc-mgmt-rg"
    location = "japan east"
    ip_conf = {
      name   = "fc-mgmt-pvt_ip"
      subnet = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/fc-mgmt-rg/providers/Microsoft.Network/virtualNetworks/fc-mgmt-vnet/subnets/fc-mgmt-subnet"
      pvt-ip = "Dynamic"
    }
  }
}

#############rg#################

nicnsgrule = {

  fcc-app_nicnsg = {
    nid   = "fc-app-nic"
    nsg= "fc-app-grp_name"

  }

    fcc-mgmt_nicnsg = {
      nid   = "fc-mgmt-nic"
      nsg = "fc-mgmt-grp_name"

    }


  }


#############rg#################




vms = {
  fc-app-vm ={
    name = "fcappprodvm"
    location = "east asia"
    rgt = "fc-app-rg"
    nic = "fc-app-nic"
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


  fc-mgmt-vm ={
    name = "fcmgmtprodvm"
    location = "japan east"
    rgt = "fc-mgmt-rg"
    nic = "fc-mgmt-nic"
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

#############rg#################

vnetpeering = {

app-vnet-peer = {
   name = "to-mgmt-vnet"
   rgt = "fc-app-rg"
   vname = "fc-app-vnet"
   rvnid = "fc-mgmt-vnet"
     
}

mgmt-vnet-peer = {
   name = "to-app-vnet"
   rgt = "fc-mgmt-rg"
   vname = "fc-mgmt-vnet"
   rvnid = "fc-app-vnet"
     
}
  

}
#############rg#################




#############rg#################
#############rg#################


#############rg#################
#############rg#################



#############rg#################
#############rg#################


#############rg#################
#############rg#################