output "ec2_public_ip" {

    value = aws_instance.my_instance.public_ip
  
}

output "ec2_public_DNS" {

    value = aws_instance.my_instance.public_dns
  
}