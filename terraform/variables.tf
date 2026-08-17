variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type for all servers"
  type        = string
  default     = "t3.micro"
}

variable "my_ip" {
  description = "Your current IP address for Bastion SSH access (e.g., '198.51.100.0/32')"
  type        = string
}
