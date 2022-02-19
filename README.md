<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.70 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.70 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.ciem_scp_read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ciem_org_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_policy.aws_config_role_for_orgs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ciem_oidc_provider_role_name"></a> [ciem\_oidc\_provider\_role\_name](#input\_ciem\_oidc\_provider\_role\_name) | name of the iam role oidc provider can assume role into | `string` | n/a | yes |
| <a name="input_ciem_org_account_role_name"></a> [ciem\_org\_account\_role\_name](#input\_ciem\_org\_account\_role\_name) | name of the iam role | `string` | n/a | yes |
| <a name="input_oidc_provider_account_id"></a> [oidc\_provider\_account\_id](#input\_oidc\_provider\_account\_id) | account id where oidc provider is created | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | id of the tenant where the application is created | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->