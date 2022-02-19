data "aws_iam_policy" "aws_config_role_for_orgs" {
  arn = "arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations"
}

resource "aws_iam_policy" "ciem_scp_read_policy" {
  name = "ciem-scp-${var.tenant_id}"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "organizations:DescribeAccount",
          "organizations:DescribeOrganizationalUnit",
          "organizations:DescribePolicy",
          "organizations:ListOrganizationalUnitsForParent",
          "organizations:ListParents",
          "organizations:ListPolicies",
          "organizations:ListPoliciesForTarget",
          "organizations:ListRoots"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role" "ciem_org_role" {
  name = var.ciem_org_account_role_name
  assume_role_policy = templatefile("oidc_assume_role_policy.json", {
    ACCOUNT_ID = var.oidc_provider_account_id,
    ROLE_NAME  = var.ciem_oidc_provider_role_name
  })
  managed_policy_arns = [
    aws_iam_policy.ciem_scp_read_policy.arn,
    data.aws_iam_policy.aws_config_role_for_orgs.arn
  ]
  tags = {}
}
