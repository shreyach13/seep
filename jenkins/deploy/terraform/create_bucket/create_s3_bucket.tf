provider "aws" {
  region = "eu-west-1"
}

#basic example of creating s3 bucket
resource "aws_s3_bucket" "seep-s3-terraform" {
  bucket = var.bucket_name
  region = "eu-west-1"
  tags = {
    Name  = var.name_tag
    Owner = var.owner_tag
  }

}
