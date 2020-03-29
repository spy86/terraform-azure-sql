###########################
# Common vars
###########################
variable "envirioment" {
  description = "Var used for backend container name key"
  type = "string"
}

variable "tag_envirioment" {
  description = "Tag describing the environment"
  type = "string"
}
variable "resource_owner" {
  description = "Tag describing the resource owner"
  type = "string"
}


###########################
# Resource groups vars
###########################

variable "rg_location" {
  description = "Location of resource group"
  default = "West Europe"
  type = "string"
}
variable "rg_name" {
  description = "Name of resource group"
  type = "string"
}

###########################
# SQL SERVER and DB vars
###########################
variable "sql_server_version" {
  description = "Version of SQL server"
  type = "string"
}
variable "sql_server_name" {
  description = "Name of SQL server"
  type = "string"
}
variable "sql_server_administrator_login" {
  description = "Administrator login for SQL server"
  type = "string"
  default = "admin"
}

variable "sql_server_administrator_login_password" {
  description = "Administrator password for SQL server"
  type = "string"
}
variable "database_collation" {
  description = "Database collation"
  type = "string"
  default = "SQL_Latin1_General_CP1_CI_AS"
}
variable "database_name" {
  description = "Database name"
  type = "string"
}
variable "database_sku_name" {
  description = "SKU name for database"
  type = "string"
  default = "BC_Gen5_2"
}