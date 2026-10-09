output "nic_ids" {
  value = {
    for key, value in azurerm_network_interface.nic :
    key => value.id
  }
}