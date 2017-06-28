provider "azurerm" {
  subscription_id = "1cd32318-ce1f-40a3-813a-8311793869c9"
  client_id       = "5ba8e2de-1722-4f1a-aade-59bf92bf0d3f"
  client_secret   = "6hKoX5jGz3arIsBRev3Hos0ETgZG4KJWgshxcLSlpBc="
  tenant_id       = "6bf32af2-2e48-49ca-801d-9335f08e95de"
}

# Create a resource group
resource "azurerm_resource_group" "HelloTerraform" {
  name     = "HelloTerraform"
  location = "West US"
}


