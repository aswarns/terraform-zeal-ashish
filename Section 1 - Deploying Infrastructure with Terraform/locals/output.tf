output "ec2_public_dns" {
  value = aws_instance.prod.*.public_dns
}

output "ec_private_ips" {
  value = aws_instance.dev.*.private_dns

}