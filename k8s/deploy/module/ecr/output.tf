output "ecr_repo_arn" {
  description="arn of the ecr repo"
  value=aws_ecr_repository.seep-ecr.arn
}

output "ecr_repo_url" {
  description="url of the ecr repo"
  value=aws_ecr_repository.seep-ecr.repository_url
}

output "ecr_repo_name" {
  description="name of the ecr repo"
  value=aws_ecr_repository.seep-ecr.name
}
