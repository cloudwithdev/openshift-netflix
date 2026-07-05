variable "cloudnova_subnet" {
  type = map(object({
    name = string
    vnet = string
    rgt = string
    add = set(string)
  }))
}