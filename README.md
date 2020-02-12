# terraform-module-security-center

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 1.41.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| alert\_notifications | Boolean flag which describes whether to send security alerts notifications to the security contact. | `bool` | `true` | no |
| alerts\_to\_admins | Boolean flag which describes  whether to send security alerts notifications to subscription admins. | `bool` | `true` | no |
| email | the email of the security center contact. | `string` | `""` | no |
| enabled | Enable or disable module | `bool` | `true` | no |
| phone | the phone number  of the security center contact. Example: `1-xxx-xxx-xxxx` | `string` | `""` | no |
| scopes | List of scopes of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope. Example: `/subscriptions/00000000-0000-0000-0000-000000000000`. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| subscription\_pricing\_enabled | Boolean flag which describes whether or not enable the security center subsciption pricing. | `bool` | `false` | no |
| tier | Manages the pricing tier for Azure security center in the current subscription. Possible values are `Free` and `Standard`. NOTE: Changing the pricing tier to Standard affects all resources in the subscription and could be quite costly. Deletion of this resource does not change or reset the pricing tier to Free. Source: https://www.terraform.io/docs/providers/azurerm/r/security_center_subscription_pricing.html | `string` | `"Free"` | no |
| workspace\_enabled | Boolean flag which describe whether to create the security center workspace or not. | `bool` | `false` | no |
| workspace\_ids | List of IDs of the log analytics workspace to save the data in. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| security\_center\_contact\_ids | The security center conatct IDs |
| security\_center\_pricing\_ids | The security center subscription pricing IDs |
| security\_center\_workspace\_ids | IDs of security center workspaces |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
