
provider "aws" {
  region = var.region
}

resource "aws_sns_topic" "topic" {
  display_name = "${var.sns-topic-name}"
  name         = "${var.sns-topic-name}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_sqs_queue" "queue" {
  name         = "${var.sqs-queue-name}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "landing" {
  bucket         = "${var.s3-bucket-landing}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "staging" {
  bucket         = "${var.s3-bucket-staging}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "atomic" {
  bucket         = "${var.s3-bucket-atomic}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "analytics" {
  bucket         = "${var.s3-bucket-analyticts}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "athena_results" {
  bucket         = "${var.s3-bucket-athena-results}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "glue_wrkdir" {
  bucket         = "${var.s3-bucket-glue-wrkdir}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

resource "aws_s3_bucket" "glue_results" {
  bucket         = "${var.s3-bucket-glue-results}"

  tags = {
      Name        = var.name,
      Project     = var.project,
      Environment = var.environment
    }
}

