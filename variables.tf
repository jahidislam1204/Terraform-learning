variable "ec2_instance_type" {
  default = "t3.micro"
  type = string
}

variable "ec2_root_storage_volume" {
  default = 30
  type = number
}

variable "ec2_ami_id" {
  default = "ami-0827b3068f1548bf6"
  type = string
  }
