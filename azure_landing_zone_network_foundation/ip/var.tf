variable "cloudnova_public_ip" {
  type = map(object({
    name = string
    loc = string
    rgt = string
    type = string
  }))
}