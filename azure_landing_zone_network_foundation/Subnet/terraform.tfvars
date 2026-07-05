cloudnova_subnet = {
  cloudnova_prod_subnet = {
    name = "cloudnova_prod_subnet"
    vnet = "cloudnova_prod_vnet"
    rgt = "cloudnova-centralindia-rg"
    add = ["10.0.1.0/24"]
  }

   cloudnova_prod_backup_subnet = {
    name = "cloudnova_prod_backup_subnet"
    vnet = "cloudnova_prod_backup_vnet"
    rgt = "cloudnova-eastasia-rg"
    add = ["192.168.1.0/24"]
  }


}