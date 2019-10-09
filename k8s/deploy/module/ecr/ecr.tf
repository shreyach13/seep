resource "aws_ecr_repository" "seep-ecr" {
  name = "seep_ecr"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}
