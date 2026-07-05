variable "rg_var" {
  type = map(object({
      name = string
      location = string
      managed_by = string
      tags = map(string)

  }))
}


variable "vnet_meaww" {
  type = map(object({
   
   name = string
   location = string
   rgt = string
   add = set(string)

}))
}