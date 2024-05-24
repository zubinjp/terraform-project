output "app_service_url" {
  description = "The URL of the deployed Azure App Service"
  value       = azurerm_app_service.example.default_site_hostname
}

output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = azurerm_resource_group.example.name
}

output "location" {
  description = "The location of the Azure resources"
  value       = azurerm_resource_group.example.location
}

output "app_service_plan_id" {
  description = "The ID of the Azure App Service Plan"
  value       = azurerm_app_service_plan.example.id
}
