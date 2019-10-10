resource "aws_default_vpc" "default_vpc" {
 tags = {
   Name = "Default VPC"
   Owner = "Seep"
   Environment = "Production"
 }
}

resource "aws_default_subnet" "default_az1" {
 availability_zone = "${var.region}a"
 tags = {
   Name = "Default subnet for ${var.region}"
   Owner = "Seep"
   Environment = "Production"
   "KubernetesCluster" = "seep-isawesome-eks-cluster"
   "kubernetes.io/role/elb" = ""
 }
}

resource "aws_default_subnet" "default_az2" {
 availability_zone = "${var.region}b"
 tags = {
   Name = "Default subnet for ${var.region}"
   Owner = "Seep"
   Environment = "Production"
   "KubernetesCluster" = "seep-isawesome-eks-cluster"
   "kubernetes.io/role/elb" = ""
 }
}
