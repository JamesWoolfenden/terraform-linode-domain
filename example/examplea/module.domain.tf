module "domain" {
  source  = "../../"
  records = var.records
  domain  = var.domain
}
