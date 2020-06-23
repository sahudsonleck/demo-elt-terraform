provider "aws" {
  region = "us-west-2"
}

resource "aws_sns_topic" "this" {
  display_name = "demosns" #"${local.display_name}"
  name         = "demosns" # "${var.topic_name}"  
}


#Module      : label
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
module "labels" {
  source = "git::https://github.com/clouddrove/terraform-labels.git?ref=tags/0.12.0"
  name        = var.name
  application = var.application
  environment = var.environment
}

# Module      : SQS
# Description : Terraform module to create SQS resource on AWS for managing queue.
resource "aws_sqs_queue" "default" {
  count = var.create ? 1 : 0

  name                              = var.name
  tags                              = module.labels.tags
}