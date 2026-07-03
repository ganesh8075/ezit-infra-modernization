
# Project Variables


variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "ezit"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "DevOps"
}


# AWS


variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}


# VPC


variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}


# Availability Zones


variable "availability_zones" {
  description = "Availability Zones"

  type = list(string)

  default = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}


# Public Subnets


variable "public_subnet_cidrs" {

  description = "Public Subnet CIDRs"

  type = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}


# Private Application Subnets


variable "private_app_subnet_cidrs" {

  description = "Private Application Subnet CIDRs"

  type = list(string)

  default = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}


# Private Database Subnets


variable "private_db_subnet_cidrs" {

  description = "Private Database Subnet CIDRs"

  type = list(string)

  default = [
    "10.0.21.0/24",
    "10.0.22.0/24"
  ]
}


# ALB


variable "alb_name" {
  description = "Application Load Balancer Name"
  type        = string
  default     = "ezit-dev-alb"
}
