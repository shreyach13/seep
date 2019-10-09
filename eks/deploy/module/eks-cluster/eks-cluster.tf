module "my-cluster" {
  source       = "git@github.com:terraform-aws-modules/terraform-aws-eks.git"
  cluster_name = "seep-isawesome-eks-cluster"
  subnets      = var.mike_is_awesome
  vpc_id       = var.default-vpc

  worker_groups = [
    {
      instance_type = "m4.large"
      asg_max_size  = 5
      tags = [{
        key                 = "foo"
        value               = "bar"
        propagate_at_launch = true
      }]
    }
  ]

  tags = {
    Environment = "Non-Production"
    Owner = "seep"
  }
}
