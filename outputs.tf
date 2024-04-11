output "aws_public_ip" {
  value = aws_instance.aws_vm.public_ip
}

output "azure_public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "AWStunnel1IP" {
  value = aws_vpn_connection.vpn.tunnel1_address
}

output "AWStunnel2IP" {
  value = aws_vpn_connection.vpn.tunnel2_address
}