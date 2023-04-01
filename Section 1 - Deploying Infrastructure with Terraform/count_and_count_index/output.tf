output "ec2_public_dns" {
  value = aws_instance.web.*.public_dns
}

output "ec_private_ips" {
  value = aws_instance.web.*.private_dns

}