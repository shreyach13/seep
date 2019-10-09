data "aws_ami" "seep-ami-jenkins" {
  most_recent = true

  filter {
    name   = "name"
    values = ["seep-ami-jenkins*"]
  }

  owners = [var.aws_account_owner]
}

resource "aws_key_pair" "eric-key" {
  key_name   = "eric-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCrXmHHrI+9PR4m7/8imIRrwQWF6md+1oaCRZM/r8jpfhLqqsN8pIUztl+Lu6PxGp9KdJFIlKxUhcMn1pINXYdETq6Tp0lIUjxXLrA9eUkdjt6TU7UG3vR1ibR4Nx2SGwULntsrUNDoYQX8l1AGgM4jLLQoba45xIFfVRlUkvcHaReifHsDQHnYsHBSZ0tg0GI9KUnPBgyoNa9/eBgPLH3NbQdg98lKdjqSdRNITT2qGe6GyS1On2OWJiOYqNwhQQY8zwAaPhDpcthKH+Vp7+sB3odL3CQzAhZnOie4+6xsV/uIPkljYrrJDGfqGonekUpuWR9lSjPTe9ZxY6N4bVz eric.echter@EricEchters-MacBook-Pro.local"
}

resource "aws_instance" "webserver" {
  ami           = "${data.aws_ami.seep-ami-jenkins.id}"
  instance_type = "t3.medium"
  iam_instance_profile = var.iam_role
  key_name = "eric-key"
  security_groups = [
    var.my_security_group
  ]
  tags = {
    Name        = "seep-jenkins-production"
    owner       = var.owner
    environment = "production"
  }
}
