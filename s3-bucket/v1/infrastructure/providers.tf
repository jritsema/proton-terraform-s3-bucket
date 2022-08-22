provider "aws" {
  region = var.region
}

variable "region" {
  description = "the aws region"
  type        = string
}