variable "public_subnets" {
  description = "List of public subnet IDs for deploying the load balancers"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC where the load balancers and other resources will be deployed"
  type        = string
}
