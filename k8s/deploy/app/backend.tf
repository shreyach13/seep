terraform {
  backend "s3" {
    bucket = "seep-s3-terraform"
    key = "k8s/terraform.tfstate"
  }
}
