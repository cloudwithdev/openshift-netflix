subnets = {
   
   vertex_subnet ={
    name = "vertex_subnet"
    rgt = "vertex-rg"
    vnet = "vertex_vnet"
    add = ["10.0.1.0/24"]

   }
   skybridge_subnet ={
    name = "skybridge_subnet"
    rgt = "skybridge-rg"
    vnet = "skybridge_vnet"
    add = ["172.16.1.0/24"]

   }
}