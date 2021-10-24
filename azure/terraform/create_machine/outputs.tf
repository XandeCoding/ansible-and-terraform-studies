output "resource_group_id" {
  value = azurerm_resource_group.resource_group.id
}

output "tls_private_key" {
  value = tls_private_key.key_ssh.private_key_pem
  sensitive = true
}

output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}