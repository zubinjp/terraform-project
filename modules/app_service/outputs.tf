output "app_service_default_hostname" {
  description = "The default hostname of the App Service."
  value       = azurerm_app_service.example.default_site_hostname
}
