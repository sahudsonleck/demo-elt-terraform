resource "aws_glue_job" "gj_elt" {
	glue_version 		= "1"
	name 				= "job-name"
	description 		= "job-desc"
	role_arn 			= data.aws_iam_role.arn
	max_capacity 		= 1
	max_retries 		= 2
	connections 		= [aws_glue_connection.connection.name]
	timeout 			= 20
	
	command {
	name 			= "pythonshell"
	script_location = "s3://bucket/script.py"
	python_version 	= "3"
	}
	
	default_arguments  ={
	"--job-language"	= "python"
	"--ENV"				= "env"
	"--ROLE_ARN"		= data.aws_iam_role.aws_glue_iam_role.arn
	}

	execution_property {
	max_concurrent_runs = 1
	}
}