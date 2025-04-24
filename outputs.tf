output "resource_group_name" {
    value = azurerm_resource_group.shop_savvy_rg.name
}

output "location" {
    value = azurerm_resource_group.shop_savvy_rg.location
}   

output "vnet_name" {
    value = azurerm_virtual_network.shop_savvy_vnet.name
}

