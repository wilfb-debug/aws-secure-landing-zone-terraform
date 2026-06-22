data "aws_caller_identity" "current" {}

resource "aws_guardduty_detector" "main" {
  enable = true
}

resource "aws_guardduty_organization_admin_account" "admin" {
  admin_account_id = "316865757403"
}
