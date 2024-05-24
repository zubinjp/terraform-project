variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

variable "location" {
  description = "The location where resources will be created."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "PROJECT3"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
  default     = "ASP-PROJECT3-8a65"
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan."
  type        = string
  default     = "YOUR_DEFAULT_APP_SERVICE_PLAN_ID"
}
