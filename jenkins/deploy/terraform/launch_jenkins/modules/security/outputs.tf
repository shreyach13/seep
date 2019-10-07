output "security_group_name" {
  description = "Team seep Jenkins security group"
  value       = aws_security_group.seep-sg-jenkins.name
}
