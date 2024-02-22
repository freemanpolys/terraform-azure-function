# terraform-azure-function
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.92.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.92.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_function_app.app_fn](https://registry.terraform.io/providers/hashicorp/azurerm/3.92.0/docs/resources/linux_function_app) | resource |
| [azurerm_resource_group.app_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.92.0/docs/resources/resource_group) | resource |
| [azurerm_service_plan.app_sp](https://registry.terraform.io/providers/hashicorp/azurerm/3.92.0/docs/resources/service_plan) | resource |
| [azurerm_storage_account.app_sa](https://registry.terraform.io/providers/hashicorp/azurerm/3.92.0/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Application name | `string` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform",<br>  "Type": "az-function"<br>}</pre> | no |
| <a name="input_env"></a> [env](#input\_env) | App service environment | `string` | `"dev"` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | n/a | `string` | `"Linux"` | no |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | n/a | `string` | `"France Central"` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | n/a | `string` | `"Y1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->