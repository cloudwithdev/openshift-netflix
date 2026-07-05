rg_list = {

    itna_dukh_kyu_hai_jeevan_me = "central india"
}

vnet_list = {
  
  ye_jeevan_hai_jee_le = {
         
         name = "ye_jeevan_hai_jee_le"
         location = "central india"
         rgt = "itna_dukh_kyu_hai_jeevan_me"
         add = ["192.168.0.0/16"]
  }

}


subvnet_list = {
      
      hulchul_front ={
        
       name = "hulchal_hui_dil_me_frontend_heart"
       rgt = "itna_dukh_kyu_hai_jeevan_me"
       vnet = "ye_jeevan_hai_jee_le"
       add = ["192.168.1.0/24"]
      }

      hulchul_back ={
        
       name = "dil_me_dar_backend"
       rgt = "itna_dukh_kyu_hai_jeevan_me"
       vnet = "ye_jeevan_hai_jee_le"
       add = ["192.168.2.0/24"]
      }
         
}