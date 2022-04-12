resource "azurerm_network_security_group" "tenable_cs_demo_sg_ssh" {
  name                = "tenable_cs_demo_sg_ssh"
  location            = azurerm_resource_group.tenable_cs_demo_rg.location
  resource_group_name = azurerm_resource_group.tenable_cs_demo_rg.name
  tags                = var.default_tags
}

resource "azurerm_network_security_rule" "ssh_security_rule" {
  name                        = "ssh_security_rule"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "<cidr>"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.tenable_cs_demo_rg.name
  network_security_group_name = azurerm_network_security_group.tenable_cs_demo_sg_ssh.name
}