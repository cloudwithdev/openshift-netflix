nsg = {
  cloudnova-centralindia-nsg = {
    resource_group_name = "cloudnova-centralindia-rg"
    location            = "Central India"
  }

  cloudnova-eastasia-nsg = {
    resource_group_name = "cloudnova-eastasia-rg"
    location            = "East Asia"
  }
}

rules = {
  ci-ssh = {
    nsg_name                = "cloudnova-centralindia-nsg"
    priority                = 100
    protocol                = "Tcp"
    destination_port_range  = "22"
    nsg_name            = "cloudnova-centralindia-nsg"
    resource_group_name = "cloudnova-centralindia-rg"
  
  }

  ci-icmp = {
    nsg_name                = "cloudnova-centralindia-nsg"
    priority                = 110
    protocol                = "Icmp"
    destination_port_range  = "*"
    resource_group_name = "cloudnova-centralindia-rg"
  }

  ea-ssh = {
    nsg_name                = "cloudnova-eastasia-nsg"
    priority                = 100
    protocol                = "Tcp"
    destination_port_range  = "22"
    resource_group_name = "cloudnova-eastasia-rg"
  }

  ea-icmp = {
    nsg_name                = "cloudnova-eastasia-nsg"
    priority                = 110
    protocol                = "Icmp"
    destination_port_range  = "*"
    resource_group_name = "cloudnova-eastasia-rg"
  }
}