resource "linode_domain" "example" {
  type      = var.domain["type"]
  domain    = var.domain["domain"]
  soa_email = var.domain["soa_email"]
  tags      = var.domain["tags"]
}
