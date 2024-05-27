variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
}

variable "location" {
  description = "The location/region where the resources will be provisioned."
}

variable "subscription_id" {
  description = "The subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID"
  type        = string
}

variable "client_id" {
  description = "The client ID for Azure authentication"
  type        = string
}

variable "client_secret" {
  description = "The client secret for Azure authentication"
  type        = string
}
