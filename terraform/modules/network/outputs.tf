output "vpc_id" {
  description = "VPCのID"
  value       = aws_vpc.vpc.id
}

output "subnet_id" {
  description = "SubnetのID"
  value       = aws_subnet.subnet.id
}

output "sg_id" {
  description = "Security GroupのID"
  value       = aws_security_group.sg.id
}
