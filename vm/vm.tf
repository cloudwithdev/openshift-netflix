resource "azurerm_linux_virtual_machine" "vm" {
  name                = "oouch-vm"
  resource_group_name = "Study_in_silence_and_learn_deeper_not_wider"
  location            = "East Asia"
  size                = "Standard_D2s_v3"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.nic_new.id
  ]

  admin_password = "Password@123456"
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}