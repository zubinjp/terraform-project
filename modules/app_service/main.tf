resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id
}
