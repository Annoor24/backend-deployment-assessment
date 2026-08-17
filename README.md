# Backend Deployment Assessment

## Architecture Overview
This project provisions a secure 3-tier AWS architecture using Terraform and deploys a containerized Golang backend with MongoDB using Docker Compose.

## Prerequisites
- AWS CLI configured with credentials
- Terraform installed
- Docker & Docker Compose installed

## Deployment Steps
1. **Provision Infrastructure (Terraform):**
   ```bash
   cd terraform
   cp terraform.tfvars.example terraform.tfvars
   # Update terraform.tfvars with your IP and region
   terraform init
   terraform apply
