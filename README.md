# terraform-linode-domain

[![Build Status](https://github.com/JamesWoolfenden/terraform-linode-domain/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-linode-domain)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-linode-domain.svg)](https://github.com/JamesWoolfenden/terraform-linode-domain/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

## Usage

Requires your Personal Access Token as an Environmental Variable.

Module automatically generate your instance root password amd SSH key.

```bash
export LINODE_TOKEN="xxxxx"
```

Include this repository as a module in your existing Terraform code:

```hcl
module "domain" {
  source      = "github.com/JamesWoolfenden/terraform-linode-domain"
  version.    = "0.0.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.8 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | >=1.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | >=1.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_domain.example](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/domain) | resource |
| [linode_domain_record.example](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/domain_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | <pre>object({<br>    type      = string<br>    domain    = string<br>    soa_email = string<br>    tags      = list(string)<br>  })</pre> | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | n/a | <pre>list(object({<br>    name        = string<br>    record_type = string<br>    target      = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain"></a> [domain](#output\_domain) | n/a |
| <a name="output_records"></a> [records](#output\_records) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Tests

This module is to serve as sample data for Checkov SAST rules.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
