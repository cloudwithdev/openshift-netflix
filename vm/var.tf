variable "rgs_var" {
  type = map(string)
}


variable "vnet" {

  type = map(object({
    name = string
    rgt = string
    add = set(string)
    location = string
  }))
}

variable "subnetting" {
  type = map(object({
    name = string
    rgt = string
    vnet = string
    add = set(string)
  }))
}