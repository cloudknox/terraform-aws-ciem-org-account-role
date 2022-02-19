variable "ciem_oidc_provider_role_name" {
  description = "name of the iam role oidc provider can assume role into"
}

variable "ciem_org_account_role_name" {
  description = "name of the iam role"
}

variable "oidc_provider_account_id" {
  description = "account id where oidc provider is created"
}

variable "tenant_id" {
  description = "id of the tenant where the application is created"
}
