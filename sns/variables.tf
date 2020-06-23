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

variable "sns-topic-name" {
  type        = string
  default     = "demo-topic"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "sqs-queue-name" {
  type        = string
  default     = "demo-queue"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-landing" {
  type        = string
  default     = "demo.ingress.landing"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-staging" {
  type        = string
  default     = "demo.ingress.staging"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-atomic" {
  type        = string
  default     = "demo.data.atomic"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-analyticts" {
  type        = string
  default     = "demo.data.analytics"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-athena-results" {
  type        = string
  default     = "demo.athena.wrkdir"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-glue-results" {
  type        = string
  default     = "demo.glue.results"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "s3-bucket-glue-wrkdir" {
  type        = string
  default     = "demo.glue.wrkdir"
  description = "Name  (e.g. `app` or `cluster`)."
}



variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}


# Module      : SQS
# Description : Terraform SQS module variables.
variable "create" {
  type        = bool
  default     = true
  description = "Whether to create SQS queue."
}

