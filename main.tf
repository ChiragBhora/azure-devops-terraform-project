resource "azurerm_resource_group" "rg" {
  name     = "devops-rg-chirag2"
  location = "Central India"
}

resource "azurerm_storage_account" "storage" {
  name                     = "chiragdevopsstorage2"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
