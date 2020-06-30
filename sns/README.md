## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create | Whether to create SQS queue. | `bool` | `true` | no |
| environment | Name of environment this VPC is targeting | `string` | `"poc"` | no |
| name | Name of the VPC | `string` | `"demo-dataflow"` | no |
| project | Name of project this VPC is meant to house | `string` | `"demo"` | no |
| region | Region of the VPC | `string` | `"us-west-2"` | no |
| s3-bucket-analyticts | Name  (e.g. `app` or `cluster`). | `string` | `"demo.data.analytics"` | no |
| s3-bucket-athena-results | Name  (e.g. `app` or `cluster`). | `string` | `"demo.athena.wrkdir"` | no |
| s3-bucket-atomic | Name  (e.g. `app` or `cluster`). | `string` | `"demo.data.atomic"` | no |
| s3-bucket-glue-results | Name  (e.g. `app` or `cluster`). | `string` | `"demo.glue.results"` | no |
| s3-bucket-glue-wrkdir | Name  (e.g. `app` or `cluster`). | `string` | `"demo.glue.wrkdir"` | no |
| s3-bucket-landing | Name  (e.g. `app` or `cluster`). | `string` | `"demo.ingress.landing"` | no |
| s3-bucket-staging | Name  (e.g. `app` or `cluster`). | `string` | `"demo.ingress.staging"` | no |
| sns-topic-name | Name  (e.g. `app` or `cluster`). | `string` | `"demo-topic"` | no |
| sqs-queue-name | Name  (e.g. `app` or `cluster`). | `string` | `"demo-queue"` | no |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map` | `{}` | no |

## Outputs

No output.

