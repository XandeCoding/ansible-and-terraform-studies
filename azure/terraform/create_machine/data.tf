resource "azurerm_resource_group" "resource_group" {
  name     = "var.resource_group_name"
  location = "var.location"

  tags = {
      Environment = "Terraform game server"
  }
}

resource "azurerm_virtual_network" "virtual_network" {
  name = "var.virtual_network_name"
  address_space = ["10.0.0.0/16"]
  location = "var.location"
  resource_group_name = azurerm_resource_group.resource_group.name

  tags = {
    Environment = "Terraform game server"
  }
}

resource "azurerm_subnet" "subnet" {
  name = "var.subnet_name"
  resource_group_name = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_public_ip" "public_ip" {
  name = "var.public_ip_name"
  location = "var.location"
  resource_group_name = "azurerm_resource_group.resource_group.name"
  allocation_method = "Dynamic"

  tags = {
    Environment = "Terraform game server"
  }
}
