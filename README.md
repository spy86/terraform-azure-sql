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
| resource\_owner | Tag describing the resource owner | `string` | n/a | yes |
| rg\_location | Location of resource group | `string` | `"West Europe"` | no |
| rg\_name | Name of resource group | `string` | n/a | yes |
| sql\_server\_administrator\_login | Administrator login for SQL server | `string` | `"admin"` | no |
| sql\_server\_administrator\_login\_password | Administrator password for SQL server | `string` | n/a | yes |
| sql\_server\_name | Name of SQL server | `string` | n/a | yes |
| sql\_server\_version | Version of SQL server | `string` | n/a | yes |
| tag\_envirioment | Tag describing the environment | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| azurerm\_mssql\_database\_id | The ID of the MS SQL Database. |
| azurerm\_sql\_server\_id | The Microsoft SQL Server ID. |
| azurerm\_sql\_server\_id\_fqdn | The fully qualified domain name of the Azure SQL Server

### Terraform plan
```
terraform apply -var-file="env/dev.tfvars"
```
### Terraform apply
```
terraform plan -var-file="env/dev.tfvars"
```

