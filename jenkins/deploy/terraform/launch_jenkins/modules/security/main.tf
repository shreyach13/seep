provider "aws" {
  region = "eu-west-1"
}

resource "aws_security_group" "seep-sg-jenkins-production" {
  name = "seep-sg-jenkins-production"
  tags = {
    Name        = "seep-sg-jenkins-production"
    owner       = var.owner
    environment = "production"
  }
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = ["185.46.212.0/22"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["185.46.212.0/22"]
  }
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
