provider "azurerm" {
  features {}
}

resource "azurerm_app_service" "app" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
}

output "app_service_id" {
  value = azurerm_app_service.app.id
}

output "app_service_url" {
  value = azurerm_app_service.app.default_site_hostname
}
