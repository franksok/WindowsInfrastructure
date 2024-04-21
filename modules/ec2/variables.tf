variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the instances."
}

variable "instance_type" {
  type        = string
  description = "The type of instance to use."
}

variable "subnets" {
  type        = list(string)
  description = "The ID of the subnet to deploy the instance in."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC for the security group."
}

variable "associate_public_ip_address" {
  type        = bool
  default     = true
  description = "Whether to assign a public IP to the instance or not."
}

variable "key_name" {
  type        = string
  default     = "iot"
  description = "The key name of the Key Pair to use for the instance."
}

variable "instance_count" {
  type        = number
  default     = 3
  description = "The number of instances to launch."
}

variable "target_group" {
  type        = string
  description = "The ARN of the target group to attach the instances to."
}