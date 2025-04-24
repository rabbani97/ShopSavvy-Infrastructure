resource "azurerm_resource_group" "shop_savvy_rg" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_virtual_network" "shop_savvy_vnet" {
    name = "shop-savvy-vnet"
    location = var.location
    resource_group_name = azurerm_resource_group.shop_savvy_rg.name
    address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "frontend_subnet" {
    name = "frontend-subnet"
    resource_group_name = azurerm_resource_group.shop_savvy_rg.name
    virtual_network_name = azurerm_virtual_network.shop_savvy_vnet.name
    address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "frontend_nsg" {
    name = "frontend-nsg"
    resource_group_name = azurerm_resource_group.shop_savvy_rg.name
    location = var.location
}


