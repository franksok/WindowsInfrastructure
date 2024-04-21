output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.subnet_ids
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "nlb_dns_name" {
  value = module.balancers.nlb_dns_name
}

output "alb_dns_name" {
  value = module.balancers.alb_dns_name
}
