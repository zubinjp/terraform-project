variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

variable "location" {
  description = "The location where resources will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan."
  type        = string
}
