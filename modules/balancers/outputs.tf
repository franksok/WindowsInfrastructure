output "nlb_arn" {
  value = aws_lb.nlb.arn
  description = "The ARN of the Network Load Balancer"
}

output "nlb_sg_id" {
  value = aws_security_group.nlb_sg.id
  description = "The ID of the Network Load Balancer's security group"
}

output "alb_arn" {
  value = aws_lb.alb.arn
  description = "The ARN of the Application Load Balancer"
}

output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
  description = "The ID of the Application Load Balancer's security group"
}

output "alb_tg_arn" {
  value = aws_lb_target_group.alb_tg.arn
  description = "The ARN of the target group associated with the Application Load Balancer"
}

output "alb_listener_arn" {
  value = aws_lb_listener.alb_listener.arn
  description = "The ARN of the listener for the Application Load Balancer"
}


# Output for NLB DNS name
output "nlb_dns_name" {
  value = aws_lb.nlb.dns_name
  description = "network load balancer DNS name"
}

# Output for ALB DNS name
output "alb_dns_name" {
  value = aws_lb.alb.dns_name
  description = "application load balancer DNS name"
}