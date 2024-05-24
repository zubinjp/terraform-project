resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "14.17.0"
  }
}
