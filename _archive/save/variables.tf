variable "name" {
  default     = "Default"
  type        = string
  description = "Name of the VPC"
}

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
