variable "owner" {
  default = "seep"
}

variable "aws_account_owner" {
  default = "090107652998"
}

variable "from_port" {
  default = "8080"
}

variable "to_port" {
  default = "8080"
}

variable "server_port" {
  default = "8080"
}

variable "my_security_group" {
}

variable "iam_role" {
  default = "seep-jenkins-role"
}
