# Key pair
resource "aws_key_pair" "deployer" {

    key_name = "terraKey-ec2"
    public_key = file("terraKey-ec2.pub")
  
}

# Ec2 instance

resource "aws_instance" "my_instance" {

    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.infra_security_group.id]
    subnet_id = aws_subnet.public.id
    instance_type = var.ec2_instance_type
    ami = var.ec2_ami_id # amazon linux
    user_data = file("install_nginx.sh")

    root_block_device {
      
      volume_size = var.ec2_root_storage_volume
      volume_type = "gp3"
    }

    tags = {

        Name = "Terraform instance"
    }
  
}