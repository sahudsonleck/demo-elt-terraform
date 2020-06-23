#Module      : LABEL
#Description : Terraform label module variables.

variable "project" {
  default     = "demo"
  type        = string
  description = "Name of project this VPC is meant to house"
}

variable "environment" {
  default     = "poc"
  type        = string
  description = "Name of environment this VPC is targeting"
}

variable "name" {
  default     = "demo-dataflow"
  type        = string
  description = "Name of the VPC"
}

variable "region" {
  default     = "us-west-2"
  type        = string
  description = "Region of the VPC"
}

