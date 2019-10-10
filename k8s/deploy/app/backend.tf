terraform {
  backend "s3" {
    bucket = "seep-s3-terraform-nonprod"
    key = "k8s/terraform.tfstate"
  }
}
