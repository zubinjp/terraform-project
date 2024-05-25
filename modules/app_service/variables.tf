variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
}

variable "location" {
  description = "The location/region where the resources will be provisioned."
}

variable "app_service_name" {
  description = "The name of the App Service."
}

variable "app_service_plan_id" {
  description = "The ID of the Azure App Service Plan."
  type        = string
}
