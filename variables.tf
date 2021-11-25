
variable "domain" {
  type = object({
    type      = string
    domain    = string
    soa_email = string
    tags      = list(string)
  })
}

variable "records" {
  type = list(object({
    name        = string
    record_type = string
    target      = string
  }))
}
