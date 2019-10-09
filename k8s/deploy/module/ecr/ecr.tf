resource "aws_ecr_repository" "seep-ecr-queue" {
  name = "seep-ecr-queue"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-posititon-simulator" {
  name = "seep-ecr-posititon-simulator"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-api-gateway" {
  name = "seep-ecr-posititon-api-gateway"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-posititon-tracker" {
  name = "seep-ecr-posititon-posititon-tracker"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-webapp" {
  name = "seep-ecr-posititon-webapp"
  tags = {
    Environment = "Production"
    Owner = "seep"
  }
}
