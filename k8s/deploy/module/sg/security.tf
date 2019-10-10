resource "aws_security_group" "seep-sg-controlpanel-eks-np"{
  name = "seep-sg-controlpanel-eks-np"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["185.46.212.0/22"]
  }
  egress {
    from_port       = 1025
    to_port         = 65535
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    #prefix_list_ids = ["pl-12c4e678"]
  }
  tags = {
     Name  = "seep-sg-controlpanel-eks-np"
     Owner = "seep"
     Environment = "Non-Production"
   }
}

resource "aws_security_group" "seep-sg-workernode-eks-np"{
  name = "seep-sg-workernode-eks-np"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["185.46.212.0/22"]
  }
  egress {
    from_port       = 0
    to_port         = 65535
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    #prefix_list_ids = ["pl-12c4e678"]
  }
  tags = {
     Name  = "seep-sg-workernode-eks-np"
     Owner = "seep"
     Environment = "Non-Production"
   }
}

resource "aws_security_group_rule" "ingress_rule_worker" {
  type            = "ingress"
  from_port       = 1025
  to_port         = 65535
  protocol        = "tcp"
  # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
  cidr_blocks = ["185.46.212.0/22"]# add a CIDR block here

  security_group_id = aws_security_group.seep-sg-workernode-eks-np.id
  depends_on = [aws_security_group.seep-sg-workernode-eks-np]
}
