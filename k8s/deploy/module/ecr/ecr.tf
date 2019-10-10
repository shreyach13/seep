resource "aws_ecr_repository" "seep-ecr-queue" {
  name = "seep-ecr-queue"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-position-simulator" {
  name = "seep-ecr-position-simulator"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-api-gateway" {
  name = "seep-ecr-api-gateway"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-position-tracker" {
  name = "seep-ecr-position-tracker"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-webapp" {
  name = "seep-ecr-webapp"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}
