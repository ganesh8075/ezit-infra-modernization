# Project Details

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "ezit"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "Dev"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "DevOps"
}

# AWS
variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

# Networking


variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)

  default = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"

  type = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs"

  type = list(string)

  default = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}

# ALB


variable "alb_name" {
  description = "Application Load Balancer Name"
  type        = string
  default     = "ezit-alb"
}
