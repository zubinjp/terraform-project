provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Windows"  # Or "Linux", depending on your requirements
  sku_name            = "F1"       # Specify the appropriate SKU name here

  os_profile {
    os_type = "Windows"  # Specify the appropriate OS type here
  }
}

module "app_service" {
  source              = "./modules/app_service"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  app_service_name    = var.app_service_name
  app_service_plan_id = azurerm_service_plan.example.id
}

output "service_plan_id" {
  value = azurerm_service_plan.example.id
}
