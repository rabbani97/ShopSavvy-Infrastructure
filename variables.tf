variable "resource_group_name" {
    type = string
    description = "The name of the resource group"
    default = "shop-savvy-rg-001"
}

variable "location" {
    type = string
    description = "The Azure region where resources will be created"
    default = "East US"
}
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Client ID (SPN)"
  type        = string
}

variable "client_secret" {
  description = "Azure Client Secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}


    