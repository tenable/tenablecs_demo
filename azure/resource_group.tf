resource "azurerm_resource_group" "tenable_cs_demo_rg" {
  name     = "tenable_cs_demo_rg"
  location = "westus2"
  tags     = var.default_tags
}