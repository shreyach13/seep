terraform {
  backend "s3" {
    key = "core/terraform-nonprod.tfstate"
  }
}
