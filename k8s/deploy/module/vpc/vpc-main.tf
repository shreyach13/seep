resource "aws_default_vpc" "default_vpc_np" {
 tags = {
   Name = "Default VPC NP"
   Owner = "Seep"
   Environment = "Non-Production"
 }
}

resource "aws_default_subnet" "default_az1_np" {
 availability_zone = "${var.region}a"
 tags = {
   Name = "Default Np subnet for ${var.region}"
   Owner = "Seep"
   "KubernetesCluster" = "seep-isawesome-eks-cluster"
   "kubernetes.io/role/elb" = ""
   Environment = "Non-Production"
 }
}

resource "aws_default_subnet" "default_az2_np" {
 availability_zone = "${var.region}b"
 tags = {
   Name = "Default Np subnet for ${var.region}"
   Owner = "Seep"
   Environment = "Non-Production"
   "KubernetesCluster" = "seep-isawesome-eks-cluster"
   "kubernetes.io/role/elb" = ""
 }
}
