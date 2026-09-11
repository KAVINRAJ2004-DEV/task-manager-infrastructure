terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Learning-stage placeholder.
# We will build the real AWS infrastructure here during the Terraform stage.
resource "aws_s3_bucket" "devops_demo" {
  bucket = "${var.project_name}-${var.environment}-demo"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "task-manager"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
