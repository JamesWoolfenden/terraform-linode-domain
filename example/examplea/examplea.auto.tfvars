
domain = {
  type      = "master"
  domain    = "foobar.example"
  soa_email = "example@foobar.example"
  tags      = ["foo", "bar"]
}

records = [{
  name        = "www"
  record_type = "CNAME"
  target      = "foobar.example"

  }, {
  name        = "beer"
  record_type = "CNAME"
  target      = "foobar.example"
}]
