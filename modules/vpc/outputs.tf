output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "igw_id" {
  value       = aws_internet_gateway.igw.id
  description = "The ID of the Internet Gateway"
}

output "nacl_id" {
  value       = aws_network_acl.public.id
  description = "The ID of the Network ACL for the public subnet"
}

output "route_table_id" {
  value       = aws_route_table.public.id
  description = "The ID of the public route table"
}

output "route_table_association_ids" {
  value = aws_route_table_association.public[*].id
  description = "The IDs of the route table associations for the public subnets"
}


output "subnet_ids" {
  value       = aws_subnet.my_subnets[*].id
  description = "The IDs of the public subnets"
}
