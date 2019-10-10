output "vpc_id" {
  description="the default vpc name"
  value=aws_default_vpc.default_vpc_np.id
}

output "seep_first_subnet" {
  description="subnet for region a"
  value=aws_default_subnet.default_az1_np.id
}

output "seep_second_subnet" {
  description="subnet for region b"
  value=aws_default_subnet.default_az2_np.id
}
