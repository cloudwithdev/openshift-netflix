nics = {

    india_region_nic ={
        name = "indianic"
        location = "Central india"
        rgt = "landing_zone_zone1"
        ip_config ={
            name = "privateip"
            private_ip = "Dynamic"
            subnet_id ="/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/landing_zone_zone1/providers/Microsoft.Network/virtualNetworks/landing_zone_india_region_vnet/subnets/india_region_subnet"
            public_ip ="/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/landing_zone_zone1/providers/Microsoft.Network/publicIPAddresses/india_region_pub"
        }

    }

    eastasia_region_nic ={
        name = "eastasiaanic"
        location = "east asia"
        rgt = "landing_zone_zone2"
        ip_config ={
            name = "privateip"
            subnet_id ="/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/landing_zone_zone2/providers/Microsoft.Network/virtualNetworks/landing_zone_eastasia_region_vnet/subnets/eastasia_region_subnet"
            private_ip = "Dynamic"
            public_ip = "/subscriptions/995b027a-d104-46d3-8a42-bc4aa82652f3/resourceGroups/landing_zone_zone2/providers/Microsoft.Network/publicIPAddresses/east_asia_region_pub"
            
        }
}

}