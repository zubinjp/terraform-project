output "app_service_id" {
  description = "The ID of the deployed App Service"
  value       = module.app_service.app_service_id
}

output "app_service_url" {
  description = "The URL of the deployed App Service"
  value       = module.app_service.app_service_url
}
