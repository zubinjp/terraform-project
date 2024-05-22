resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Windows"

  sku {
    tier = "Free"
    size = "F1"
  }
}

module "app_service" {
  source = "./modules/app_service"

  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  app_service_name    = var.app_service_name
  app_service_plan_id = azurerm_app_service_plan.example.id
}
