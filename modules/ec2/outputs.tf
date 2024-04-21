output "instance_ids" {
  value       = [for inst in aws_instance.example: inst.id]
  description = "List of IDs of the instances created."
}

output "instance_public_ips" {
  value       = [for inst in aws_instance.example: inst.public_ip]
  description = "List of public IP addresses assigned to the instances."
}

output "instance_private_ips" {
  value       = [for inst in aws_instance.example: inst.private_ip]
  description = "List of private IP addresses assigned to the instances."
}
