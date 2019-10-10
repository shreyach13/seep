resource "aws_ecr_repository" "seep-ecr-queue-nonprod" {
  name = "seep-ecr-queue-nonprod"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-position-simulator-nonprod" {
  name = "seep-ecr-position-simulator-nonprod"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-api-gateway-nonprod" {
  name = "seep-ecr-api-gateway-nonprod"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-position-tracker-nonprod" {
  name = "seep-ecr-position-tracker-nonprod"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}

resource "aws_ecr_repository" "seep-ecr-webapp-nonprod" {
  name = "seep-ecr-webapp-nonprod"
  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}
