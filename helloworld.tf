provider "azurerm" {
  subscription_id = "1cd32318-ce1f-40a3-813a-8311793869c9"
  client_id       = "6598571a-02dd-4512-905a-46153a6d0339"
  client_secret   = "jiZVJYpK4piswUSVUU+b75hJAjL5OqTcdEUXQFW/mEE="
  tenant_id       = "6bf32af2-2e48-49ca-801d-9335f08e95de"
}

# Create a resource group
resource "azurerm_resource_group" "HelloTerraform" {
  name     = "Helloworld"
  location = "West US"
}


