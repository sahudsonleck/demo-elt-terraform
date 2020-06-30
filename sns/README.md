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
| environment | Name of environment | `string` | `"poc"` | no |
| name | Name of the data pipeline | `string` | `"demo-dataflow"` | no |
| project | Name of project | `string` | `"demo"` | no |
| region | Region of the VPC | `string` | `"us-west-2"` | no |
| s3-bucket-analyticts | Name of the analytics s3 data store | `string` | `"demo.data.analytics"` | no |
| s3-bucket-athena-results | Name for the athena working directory | `string` | `"demo.athena.wrkdir"` | no |
| s3-bucket-atomic | Name of the atomic S3 data store | `string` | `"demo.data.atomic"` | no |
| s3-bucket-glue-results | Name of the glue results directory | `string` | `"demo.glue.results"` | no |
| s3-bucket-glue-wrkdir | Name of the glue working directory | `string` | `"demo.glue.wrkdir"` | no |
| s3-bucket-landing | Name of the landing data repository | `string` | `"demo.ingress.landing"` | no |
| s3-bucket-staging | Name of the staging data repository | `string` | `"demo.ingress.staging"` | no |
| sns-topic-name | Name of the sns topic for alert notifications | `string` | `"demo-topic"` | no |
| sqs-queue-name | Name of the event queue used to trigger elt actions | `string` | `"demo-queue"` | no |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map` | `{}` | no |

## Outputs

No output.

