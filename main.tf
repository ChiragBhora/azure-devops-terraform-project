data "azurerm_resource_group" "rg" {
  name = "chiragfreshrg001"
}

resource "azurerm_storage_account" "storage" {
  name                     = "chiragstorage001x"
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
