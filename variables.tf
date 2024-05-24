variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region where the resources will be created"
  type        = string
}

variable "app_service_name" {
  description = "The name of the app service"
  type        = string
}

variable "app_service_plan_id" {
  description = "The ID of the app service plan"
  type        = string
}
