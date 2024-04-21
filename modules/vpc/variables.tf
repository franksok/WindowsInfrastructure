variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zone" {
  description = "Primary availability zone for the VPC resources"
  type        = string
  default     = "eu-west-2a"
}
