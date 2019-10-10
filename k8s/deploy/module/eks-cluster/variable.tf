variable "region" {
  default = "eu-west-1"
}

variable "default_vpc_np" {
  description="default vpc np"
}

variable "mike_is_awesome" {
  description="subnet"
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::090107652998:user/shell/shreyach13"
      username = "shreyach13"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::090107652998:user/eddyn"
      username = "eddyn"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::090107652998:user/shell/ericechter"
      username = "ericechter"
      groups   = ["system:masters"]
    },
  ]
}
