rgs_var = {
  Study_in_silence_and_learn_deeper_not_wider = "central india"
  Donot_showff_be_humble = "east asia"
  Donot_compare_with_other = "east us"

}

vnet = {
  oouch_vnet = {
    name = "oouch_vnet"
    location = "east asia"
    rgt = "Study_in_silence_and_learn_deeper_not_wider"
    add = ["192.168.0.0/16"]
  }
}

subnetting = {
  oouch_subnet_front = {
    name = "oouch_frontend_subnet"
    vnet = "oouch_vnet"
    rgt = "Study_in_silence_and_learn_deeper_not_wider"
    add = ["192.168.1.0/24"]
  }
}