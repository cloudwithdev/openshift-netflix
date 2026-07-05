module "parent_rg_lab" {
  source = "../child_mdule"
  rgs = {
    rg_app_dev = {
      name     = "rg-app-dev"
      location = "east asia"
    }
    rg_app_test = {
      name     = "rg-app-test"
      location = "central india"
    }
  }

}
