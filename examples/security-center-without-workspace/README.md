# Security center with no workspace example
## Usage
```
terraform init
terraform apply
terraform destroy
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_id | n/a | `string` | n/a | yes |
| client\_secret | n/a | `string` | n/a | yes |
| subscription\_id | n/a | `string` | n/a | yes |
| tenant\_id | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| security\_center\_contact\_id | n/a |
| security\_center\_pricing\_id | n/a |
| security\_center\_workspace\_ids | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
