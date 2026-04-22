data "aws_organizations_organization" "org" {}

resource "aws_organizations_policy" "deny_leave_org" {
  name        = "DenyLeaveOrganization"
  description = "Prevents member accounts from leaving the AWS Organization"
  type        = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid      = "DenyLeaveOrganization"
        Effect   = "Deny"
        Action   = [
          "organizations:LeaveOrganization"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_organizations_policy_attachment" "deny_leave_org_to_sandbox" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = "ou-adtv-j1z2kcwv"
}
