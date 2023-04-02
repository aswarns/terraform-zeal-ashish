output "ec2_public_dns" {
  value = aws_instance.web.public_dns
}

output "ec2_private_ip" {
  value = aws_instance.web.private_ip  
}


output "ec2_sg_id" {
  value = aws_security_group.ec2-sg.id
  
}

output "elb_sg_id" {
  value = aws_security_group.elb-sg.id
}