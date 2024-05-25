variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the resource group"
}

variable "app_service_name" {
  description = "The name of the App Service"
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan"
}

resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id

  site_config {
    always_on = true
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}
