output "organization_id" {
  value = aws_organizations_organization.main.id
}

output "root_id" {
  value = aws_organizations_organization.main.roots[0].id
}

output "security_ou_id" {
  value = aws_organizations_organizational_unit.security.id
}

output "infrastructure_ou_id" {
  value = aws_organizations_organizational_unit.infrastructure.id
}

output "sandbox_ou_id" {
  value = aws_organizations_organizational_unit.sandbox.id
}

output "workloads_ou_id" {
  value = aws_organizations_organizational_unit.workloads.id
}

output "sandbox_account_id" {
  value = aws_organizations_account.sandbox.id
}
