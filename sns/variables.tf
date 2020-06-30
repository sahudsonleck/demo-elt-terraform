#Module      : SNS
#Description : Terraform label module variables.

variable "project" {
  default     = "demo"
  type        = string
  description = "Name of project"
}

variable "environment" {
  default     = "poc"
  type        = string
  description = "Name of environment"
}

variable "name" {
  default     = "demo-dataflow"
  type        = string
  description = "Name of the data pipeline"
}

variable "region" {
  default     = "us-west-2"
  type        = string
  description = "Region of the VPC"
}

variable "sns-topic-name" {
  type        = string
  default     = "demo-topic"
  description = "Name of the sns topic for alert notifications"
}

variable "sqs-queue-name" {
  type        = string
  default     = "demo-queue"
  description = "Name of the event queue used to trigger elt actions"
}

variable "s3-bucket-landing" {
  type        = string
  default     = "demo.ingress.landing"
  description = "Name of the landing data repository"
}

variable "s3-bucket-staging" {
  type        = string
  default     = "demo.ingress.staging"
  description = "Name of the staging data repository"
}

variable "s3-bucket-atomic" {
  type        = string
  default     = "demo.data.atomic"
  description = "Name of the atomic S3 data store"
}

variable "s3-bucket-analyticts" {
  type        = string
  default     = "demo.data.analytics"
  description = "Name of the analytics s3 data store"
}

variable "s3-bucket-athena-results" {
  type        = string
  default     = "demo.athena.wrkdir"
  description = "Name for the athena working directory"
}

variable "s3-bucket-glue-results" {
  type        = string
  default     = "demo.glue.results"
  description = "Name of the glue results directory"
}

variable "s3-bucket-glue-wrkdir" {
  type        = string
  default     = "demo.glue.wrkdir"
  description = "Name of the glue working directory"
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

