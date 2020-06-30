## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application | Application (e.g. `cd` or `clouddrove`). | `string` | `"app"` | no |
| attributes | Additional attributes (e.g. `1`). | `list` | `[]` | no |
| create | Whether to create SQS queue. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `"env"` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `"demoqueue"` | no |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map` | `{}` | no |

## Outputs

No output.

