resource "aws_security_group" "seep-sg-controlpanel-eks"{
  name = "seep-sg-controlpanel-eks"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 1025
    to_port         = 65535
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    #prefix_list_ids = ["pl-12c4e678"]
  }
  tags = {
     Name  = "seep-sg-controlpanel-eks"
     Owner = "seep"
     Environment = "Non-Production"
   }
}

resource "aws_security_group" "seep-sg-workernode-eks"{
  name = "seep-sg-workernode-eks"
  ingress {
    from_port = 443
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 65535
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    #prefix_list_ids = ["pl-12c4e678"]
  }
  tags = {
     Name  = "seep-sg-workernode-eks"
     Owner = "seep"
     Environment = "Non-Production"
   }
}
