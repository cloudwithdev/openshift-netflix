rg_list = {
  prod_rg = {
    name     = "frontend-web-app"
    location = "east asia"
  }
  qa_rg = {
    name     = "frontend-qa-rg"
    location = "east asia"
  }
}



###############################

vnet_list = {

  prod_frontend_vnet = {
    name = "frontend-prod-vnet"
    rgt  = "prod_rg"
    add  = ["10.1.0.0/16"]
  }

  qa_frontend_vnet = {
    name = "frontend-qa-vnet"
    rgt  = "qa_rg"
    add  = ["10.2.0.0/16"]
  }

}


#######################

subnet_list = {
  prod_frontend_subnet = {
    name = "frontend-prod-subnet"
    rgt  = "prod_rg"
    vnet = "prod_frontend_vnet"
    add  = ["10.1.0.0/24"]
  }
  qa_frontend_subnet = {
    name = "frontend-qa-subnet"
    rgt  = "qa_rg"
    vnet = "qa_frontend_vnet"
    add  = ["10.2.0.0/24"]
  }

}

#############################

nsg_list = {

  prod_frontend_nsg = {
    name = "frontend-prod-nsg"
    rgt  = "prod_rg"
  }
  qa_frontend_nsg = {
    name = "frontend-qa-nsg"
    rgt  = "qa_rg"
  }
}

##########################################

nic_list = {

  prod_frontend_nic = {
    name = "frontend_prod-nic"
    rgt  = "prod_rg"

    ip_conf = {
      name       = "frontend-prod-private-ip-range"
      allocation = "Dynamic"
      subnet     = "prod_frontend_subnet"
    }

  }

  qa_frontend_nic = {
    name = "frontend_qa-nic"
    rgt  = "qa_rg"

    ip_conf = {
      name       = "frontend-qa-private-ip-range"
      allocation = "Dynamic"
      subnet     = "qa_frontend_subnet"
    }

  }
}


#################

nic_nsg_list = {

  prod_nic_nsg_association = {
    nic = "prod_frontend_nic"
    nsg = "prod_frontend_nsg"
  }

  qa_nic_nsg_association = {
    nic = "qa_frontend_nic"
    nsg = "qa_frontend_nsg"
  }

}


#######################################


vms_list = {

  frontend-prod-vm = {
    name       = "frontend-prod-vm"
    location   = "east asia"
    rgt        = "prod_rg"
    nic        = "prod_frontend_nic"
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


  frontend-qa-vm = {
    name       = "frontend-qa-vm"
    location   = "east asia"
    rgt        = "qa_rg"
    nic        = "qa_frontend_nic"
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



##############


peering_list = {

  frontend-prod-vnet-peer = {
    name  = "to-qa-vnet"
    rgt   = "prod_rg"
    vname = "prod_frontend_vnet"
    vnet  = "qa_frontend_vnet"

  }

  qa-vnet-peer = {
    name  = "to-prod-vnet"
    rgt   = "qa_rg"
    vname = "qa_frontend_vnet"
    vnet  = "prod_frontend_vnet"

  }


}
