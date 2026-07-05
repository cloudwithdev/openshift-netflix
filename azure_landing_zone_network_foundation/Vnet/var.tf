variable "rg_vnet" {

    type = map(object({
      name = string
      loc = string
      rgt = string
      add = set(string)
    }))
}