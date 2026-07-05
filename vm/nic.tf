resource "azurerm_network_interface" "nic_new" {
  
  name = "oouch_nic"
  location = "east asia"
  resource_group_name = "Study_in_silence_and_learn_deeper_not_wider"

  ip_configuration {
    name = "newip"
    subnet_id =  azurerm_subnet.rg_subnet["oouch_subnet_front"].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.public_ip.id


  }

}