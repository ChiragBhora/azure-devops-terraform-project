resource "azurerm_resource_group" "rg" {
  name     = "chiragfreshrg001"
  location = "Central India"
}

resource "azurerm_storage_account" "storage" {
  name                     = "chiragstorage001x"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
