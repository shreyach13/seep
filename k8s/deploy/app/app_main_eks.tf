provider "aws" {
  region = var.region
}

module "seep-sg-eks" {
  source = "../module/sg/"
}

module "seep-vpc-eks" {
  source = "../module/vpc/"
}

module "seep-eks-eks" {
  source = "../module/eks-cluster/"
  mike_is_awesome = [module.seep-vpc-eks.seep_first_subnet, module.seep-vpc-eks.seep_second_subnet]
  default_vpc_np = module.seep-vpc-eks.vpc_id
  }

module "seep-ecr" {
  source = "../module/ecr"
}
