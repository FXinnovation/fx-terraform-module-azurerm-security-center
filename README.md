# terraform-module-security-center

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| email | the email of the security center contact. | string | n/a | yes |
| phone | the phone number  of the security center contact. Example: `1-xxx-xxx-xxxx` | string | n/a | yes |
| tier | Manages the pricing tier for Azure security center in the current subscription. Possible values are `Free` and `Standard`. NOTE: Changing the pricing tier to Standard affects all resources in the subscription and could be quite costly. Deletion of this resource does not change or reset the pricing tier to Free. Source: https://www.terraform.io/docs/providers/azurerm/r/security\_center\_subscription\_pricing.html | string | n/a | yes |
| alert\_notifications | Boolean flag which describes whether to send security alerts notifications to the security contact. | string | `"true"` | no |
| alerts\_to\_admins | Boolean flag which describes  whether to send security alerts notifications to subscription admins. | string | `"true"` | no |
| enabled | Enable or disable module | string | `"true"` | no |
| security\_center\_workspace | Map of the scopes with the associated Log Analytics Workspace. Can only be used on `Standard` tier. Scope can be a Subscription or Resource Group id. Example:   `/subscriptions/00000000-0000-0000-0000-000000000000 = data.azurerm\_log\_analytics\_workspace.this.id` .See https://www.terraform.io/docs/providers/azurerm/r/security\_center\_workspace.html | map | `{}` | no |
| workspace\_enabled | Boolean flag which describe whether to create the security center workspace or not | string | `"false"` | no |

## Outputs

| Name | Description |
|------|-------------|
| security\_center\_contact\_id | The security center conatct ID |
| security\_center\_pricing\_id | The security center subscription pricing ID |
| security\_center\_workspace\_id | IDs of security center workspaces |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
