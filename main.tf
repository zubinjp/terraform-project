provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = "eastus"  
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Linux"
  reserved            = true
  is_xenon            = true

  sku {
    tier     = "Standard"  # Change the tier to "Standard"
    size     = "S1"        # Specify an appropriate size for the Standard tier, such as "S1"
    capacity = 1
  }
}

module "app_service" {
  source              = "./modules/app_service"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_name    = var.app_service_name
  app_service_plan_id = azurerm_app_service_plan.example.id
}

output "service_plan_id" {
  value = azurerm_app_service_plan.example.id
}
