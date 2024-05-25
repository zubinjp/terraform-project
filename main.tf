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
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  
  sku {
    tier = "Free"
    size = "F1"
  }

  kind        = "Linux"  
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
