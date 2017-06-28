provider "azurerm" {
  subscription_id = "1cd32318-ce1f-40a3-813a-8311793869c9"
  client_id       = "6598571a-02dd-4512-905a-46153a6d0339"
  client_secret   = "I+TrC17D3OZ16zgXMhrzU8GodhV909XITieIKGeTKi0="
  tenant_id       = "6bf32af2-2e48-49ca-801d-9335f08e95de"
}
# Above block is used to connect to azure rm api
# Create a resource group
resource "azurerm_resource_group" "HelloTerraform" {
  name     = "Helloworld"
  location = "West US"
}
# Create a virtual network in the web_servers resource group
resource "azurerm_virtual_network" "network" {
  name                = "productionNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.HelloTerraform.name}"

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
  }
}


