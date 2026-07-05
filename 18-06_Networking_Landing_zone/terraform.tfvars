
rg_list = {
  prod_rg = {
    name     = "prod_webapp_rg"
    location = "east asia"
  }

  dev_rg = {

    name     = "dev_webap_rg"
    location = "central india"
  }

}

##############################################

webapp_vnet = {
  prod_vnet = {
    name = "prod-vnet-webapp"
    rgt  = "prod_rg"
    add  = ["10.16.0.0/16"]
  }

  dev_vnet = {
    name = "dev_webapp_vnet"
    rgt  = "dev_rg"
    add  = ["10.32.0.0/16"]
  }
}


#################################

subnets = {

  prod_subnet = {
    name = "prod_webapp_subnet"
    rgt  = "prod_rg"
    vnet = "prod_vnet"
    add  = ["10.16.1.0/24"]

  }
  dev_subnet = {

    name = "dev_webapp_subnet"
    rgt  = "dev_rg"
    vnet = "dev_vnet"
    add  = ["10.32.1.0/24"]
  }

}

########################################################

nsg = {
  prod_nsg = {
    name = "web_prod_nsg"
    rgt  = "prod_rg"

  }

  dev_nsg = {
    name = "web_dev_nsg"
    rgt  = "dev_rg"
  }
}



###############################################

nics = {

  web_pord_nics = {
    name = "prod_web_nic"
    rgt  = "prod_rg"
    ip = {
      name   = "web_prod_private_ip"
      prip   = "Dynamic"
      subnet = "prod_subnet"

    }
  }

  web_dev_nics = {
    name = "prod_dev_nic"
    rgt  = "dev_rg"
    ip = {
      name   = "web_dev_private_ip"
      prip   = "Dynamic"
      subnet = "dev_subnet"

    }
  }

}


###########################################################

