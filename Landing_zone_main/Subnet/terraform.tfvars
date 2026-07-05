
subnets = {
     
     subnet1_india_region ={
         name = "india_region_subnet"
         vnet = "landing_zone_india_region_vnet"
         rgt = "landing_zone_zone1"
         add = ["192.168.1.0/24"]

     }
      
        subnet1_eastasia_region ={
         name = "eastasia_region_subnet"
         vnet = "landing_zone_eastasia_region_vnet"
         rgt = "landing_zone_zone2"
         add = ["172.16.1.0/24"]

     }
}