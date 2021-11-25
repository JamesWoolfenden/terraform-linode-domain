resource "linode_domain_record" "example" {
  count       = length(var.records)
  domain_id   = linode_domain.example.id
  name        = var.records[count.index]["name"]
  record_type = var.records[count.index]["record_type"]
  target      = var.records[count.index]["target"]
}
