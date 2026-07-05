rg_var = {
  "meaw" = {
    name = "meeaawwwwww_rg"
    location = "east us"
    managed_by = "meawwwwwww"
    tags = {
        meaw = "meawwwwwchahal"
    }
  }

  "meaw1" = {
    name = "meeaawwwwww1_rg"
    location = "east us"
    managed_by = "meawwwwwww1"
    tags = {
        meaw = "meawwwwwchahal"
    }
  }

  "meaw2" = {
    name = "meeaawwwwww2_rg"
    location = "east us"
    managed_by = "meawwwwwww2"
    tags = {
        meaw = "meawwwwwchahal"
    }
  }
}



vnet_meaww = {
  "meawvnet" = {
    name = "meawvnet"
    location = "central india"
    rgt = "meeaawwwwww_rg"
    add = ["192.168.0.0/24"]
  }

  "meawvnet1" = {
    name = "meawvnet1"
    location = "central india"
    rgt = "meeaawwwwww1_rg"
    add = ["192.168.0.0/24"]
  }

  "meawvnet2" = {
    name = "meawvnet2"
    location = "central india"
    rgt = "meeaawwwwww2_rg"
    add = ["192.168.0.0/24"]
  }
}