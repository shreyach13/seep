output "security_controlpanel_eks" {
  description="the security group name"
  value=aws_security_group.seep-sg-controlpanel-eks-np.name
}

output "security_workergroup_name" {
  description="the security group name"
  value=aws_security_group.seep-sg-workernode-eks-np.name
}
