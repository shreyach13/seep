provider "aws" {
  region = "eu-west-1"
}

module "seep-sg-eks" {
  source = "../module/sg/"
}
