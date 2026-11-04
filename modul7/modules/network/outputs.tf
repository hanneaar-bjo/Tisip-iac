output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "ID til subnettet, til bruk for f.eks. en NIC."
}
output "subnet_name" {
    description = "Navnet på subnettet."
    value = azurerm_subnet.subnet.name
}

output "vnet_id" {
    description = "ID til det virtuelle nettverket. Brukes blant annet ved VNet-peering."
    value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
    description = "Navnet på det virtuelle nettverket."
    value = azurerm_virtual_network.vnet.name
}