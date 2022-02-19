module "example" {
  source                       = "../.."
  ciem_oidc_provider_role_name = var.ciem_oidc_provider_role_name
  ciem_org_account_role_name   = var.ciem_org_account_role_name
  oidc_provider_account_id     = var.oidc_provider_account_id
  tenant_id                    = var.tenant_id
}
