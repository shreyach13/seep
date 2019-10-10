resource "aws_ecr_repository" "seep-ecr-queue-nonprod" {
  name = "seep-ecr-queue"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-position-simulator-nonprod" {
  name = "seep-ecr-position-simulator"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-api-gateway-nonprod" {
  name = "seep-ecr-api-gateway"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-position-tracker-nonprod" {
  name = "seep-ecr-position-tracker"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-webapp-nonprod" {
  name = "seep-ecr-webapp"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}
