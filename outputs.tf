output "azurerm_sql_server_id" {
  value = "${azurerm_sql_server.examplesqlserver.id}"
  description = "The Microsoft SQL Server ID."
}

output "azurerm_sql_server_id_fqdn" {
  value = "${azurerm_sql_server.examplesqlserver.fully_qualified_domain_name}"
  description = "The fully qualified domain name of the Azure SQL Server"
}

output "azurerm_mssql_database_id" {
  value = "${azurerm_mssql_database.exampledatabase.id}"
  description = "The ID of the MS SQL Database."
}