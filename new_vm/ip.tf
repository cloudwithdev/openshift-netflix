resource "azurerm_public_ip" "ipp" {
  name = "mypubc"
  location = "central india"
  resource_group_name = "itna_dukh_kyu_hai_jeevan_me"
  allocation_method = "Static"
  sku = "Standard"

}


# resource "azurerm_public_ip" "public_ip" {
  
#   name = "public_ip_new"
#   location = "east asia"
#   resource_group_name = "Study_in_silence_and_learn_deeper_not_wider"
#   allocation_method = "Static"
#   sku = "Standard"


# }