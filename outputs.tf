output "resource_group_name" {
  description = "The name of the resource group created."
  value       = azurerm_resource_group.example.name
}

output "resource_group_location" {
  description = "The location of the resource group created."
  value       = azurerm_resource_group.example.location
}

output "service_plan_id" {
  description = "The ID of the Azure App Service Plan."
  value       = azurerm_service_plan.example.id
}

output "app_service_url" {
  description = "The URL of the Azure App Service."
  value       = module.app_service.app_service_url
}
