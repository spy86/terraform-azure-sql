resource "azurerm_sql_server" "examplesqlserver" {
  name                         = "${var.sql_server_name}"
  resource_group_name          = "${azurem_resource_group.rg.name}"
  location                     = "${azurem_resource_group.rg.location}"
  version                      = "${var.sql_server_version}"
  administrator_login          = "${var.sql_server_administrator_login}"
  administrator_login_password = "${var.sql_server_administrator_login_password}"

    tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.envirioment}"
  }
}
resource "azurerm_mssql_database" "exampledatabase" {
  name           = "${var.database_name}"
  server_id      = "${azurerm_sql_server.examplesqlserver.id}"
  collation      = "${var.database_collation}"
  license_type   = "LicenseIncluded"
  max_size_gb    = 4
  read_scale     = true
  sku_name       = "${var.database_sku_name}"
  zone_redundant = true

    tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.envirioment}"
  }

}