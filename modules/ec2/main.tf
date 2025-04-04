variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}

 name of the key pair"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID"
  type        = string
}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "main-instance"
  }
}
