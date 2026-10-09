output "public_ip_ids" {
  value = {
    for key, value in azurerm_public_ip.public_ip :
    key => value.id
  }
}