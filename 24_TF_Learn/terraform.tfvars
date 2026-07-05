rg_list = {
  prod_rg = {
    name     = "prod-rg"
    location = "east asia"
  }

  qa_rg = {

    name     = "qa-rg"
    location = "east asia"
  }

  connectivity_rg = {

    name     = "connectivity-rg"
    location = "east asia"
  }

}

##############################################################

vnet_list = {

  connectivity_vnet = {
    name = "shared_vnet_connectivity"
    rgt  = "connectivity_rg"
    add  = ["10.0.0.0/16"]
  }

}
########################################################

subnet_list = {

  frontend_subnet = {

    name = "frontend-prod-subnet"
    rgt  = "connectivity_rg"
    vnet = "connectivity_vnet"
    add  = ["10.0.1.0/24"]
  }

  backend = {

    name = "frontend-qa-subnet"
    rgt  = "connectivity_rg"
    vnet = "connectivity_vnet"
    add  = ["10.0.2.0/24"]
  }

}
