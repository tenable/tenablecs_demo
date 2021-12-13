resource "azurerm_storage_account" "tenable_cs_demo_storage_account" {
  name                     = "tenablecsdemostoracct"
  location                 = azurerm_resource_group.tenable_cs_demo_rg.location
  resource_group_name      = azurerm_resource_group.tenable_cs_demo_rg.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = "true"
  tags                     = var.default_tags
}

resource "azurerm_storage_container" "tenable_cs_demo_storage_container" {
  name                  = "tenablecsdemostorctnr"
  storage_account_name  = azurerm_storage_account.tenable_cs_demo_storage_account.name
  container_access_type = "blob"
}