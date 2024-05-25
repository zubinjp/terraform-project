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

  // Set the runtime_version to target 32-bit environment
  kind            = "Windows"
  reserved        = true
  per_site_scaling = false
  sku {
    tier = "Free"
    size = "F1"
  }
  site_config {
    always_on                = true
    dotnet_framework_version = "v4.0"
    windows_fx_version       = "WINDOWS|10.0"
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
