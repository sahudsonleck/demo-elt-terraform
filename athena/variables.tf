#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = "demoqueue"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "application" {
  type        = string
  default     = "app"
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = "env"
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g. `1`)."
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

