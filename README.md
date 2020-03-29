# TERRAFORM (AZURE MSSQL Server + Example database)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
## Providers      

| Name | Version |
|------|---------|
| azurem | latest |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| database\_collation | Database collation | `string` | `"SQL_Latin1_General_CP1_CI_AS"` | no |
| database\_name | Database name | `string` | n/a | yes |
| database\_sku\_name | SKU name for database | `string` | `"BC_Gen5_2"` | no |
| envirioment | Var used for backend container name key | `string` | n/a | yes |
| location | Location which are used for all resources | `string` | `"West Europe"` | no |
| prefix | Prefix which are used for all resources | `string` | `"dev-"` | no |
| resource\_owner | Tag describing the resource owner | `string` | n/a | yes |
| rg\_location | Location of resource group | `string` | `"West Europe"` | no |
| rg\_name | Name of resource group | `string` | n/a | yes |
| sql\_server\_administrator\_login | Administrator login for SQL server | `string` | `"admin"` | no |
| sql\_server\_administrator\_login\_password | Administrator password for SQL server | `string` | n/a | yes |
| sql\_server\_name | Name of SQL server | `string` | n/a | yes |
| sql\_server\_version | Version of SQL server | `string` | n/a | yes |
| tag\_envirioment | Tag describing the environment | `string` | n/a | yes |

## Outputs

No output.

### Terraform plan
```
terraform apply -var-file="env/prod.tfvars"
```
### Terraform apply
```
terraform plan -var-file="env/prod.tfvars"
```

