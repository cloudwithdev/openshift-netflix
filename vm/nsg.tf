resource "azurerm_network_security_group" "vm_nsg" {
  name                = "vm-nsg"
  location            = "East Asia"
  resource_group_name = "Study_in_silence_and_learn_deeper_not_wider"

  security_rule {
    name                       = "Allow-SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface_security_group_association" "nsg_assoc" {
  network_interface_id      = azurerm_network_interface.nic_new.id
  network_security_group_id = azurerm_network_security_group.vm_nsg.id
}