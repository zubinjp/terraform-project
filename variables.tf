variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
}

variable "location" {
  description = "The location/region where the resources will be provisioned."
}

variable "app_service_name" {
  description = "The name of the App Service."
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
}

variable "client_secret" {
  description = "The client secret for authenticating with Azure."
}

variable "subscription_id" {
  description = "The Azure subscription ID."
}

variable "tenant_id" {
  description = "The Azure tenant ID."
}

