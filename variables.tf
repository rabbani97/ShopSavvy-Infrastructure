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


    