#Specify provider and access details
provider "aws" {
  region = var.region
}

#Specify lambda
resource "aws_lambda_function" "lambda" {
   filename = "demo-lambda.zip"
   function_name = "demo-lambda"
   role = "arn:aws:iam::576148543134:role/demoroleFullAccess"
   handler = "demo-lambda.lambda_handler"
   runtime = "python3.6"
   timeout = 10
   source_code_hash =  "demo-lambda.zip"
}

#Specify lambda triggers
resource "aws_lambda_event_source_mapping" "lambda_mapping_trigger" {
  batch_size = 1
  event_source_arn = "arn:aws:sqs:us-west-2:576148543134:demo-queue"
  enabled = true
  function_name = "${aws_lambda_function.lambda.arn}"
}

#Specify lambda events 
resource "aws_lambda_function_event_invoke_config" "lambda" {
  function_name = "${aws_lambda_function.lambda.arn}"
  destination_config {
    on_success {
      destination = "arn:aws:sns:us-west-2:576148543134:demo-topic"
    }
  }
}

#Specify etl source 
resource "aws_s3_bucket_object" "test_data_landing" {
  bucket = "demo.ingress.landing"
  key    = "user.json"
  source = "data/users.json"
}

#Specify etl target 
resource "aws_athena_database" "db_ldg" {
  name   = "athena_ldg"
  bucket = "demo.ingress.landing"
}
