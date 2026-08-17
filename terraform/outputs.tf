output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.startuptech.id
}

output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.backend_alb.dns_name
}

output "bastion_public_ip" {
  description = "The public IP of the Bastion Host"
  value       = aws_eip.bastion_eip.public_ip
}

output "backend_private_ip" {
  description = "The private IP of the Backend Server"
  value       = aws_instance.backend.private_ip
}
