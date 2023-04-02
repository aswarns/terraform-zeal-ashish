output "ec2_arn" {
  value = aws_instance.web.arn
}

output "ec2_public_dns" {
  value = aws_instance.web.public_dns
}

output "ec2_instance_state" {
  value = aws_instance.web.instance_state
}

output "ec2" {
  value = aws_instance.web.monitoring

}

/*
output "github_repository_name" {
  value = github_repository.example.full_name

}
*/

output "eip" {
  value = aws_eip.lb.public_ip
}

output "aw_s3_bucket_domain_name" {
  value = aws_s3_bucket.b.bucket_domain_name
}

output "aw_s3_bucket_regional_domain_name" {
  value = aws_s3_bucket.b.bucket_regional_domain_name
}


output "azs" {
  value =  aws_elb.bar.availability_zones
}
