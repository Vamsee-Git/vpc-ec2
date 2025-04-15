provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id[0]
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  root_block_device {
    volume_size = 15
    volume_type = "gp2"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo docker run -d -p 8080:80 -e OPENPROJECT_SECRET_KEY_BASE=secret -e OPENPROJECT_HTTPS=false openproject/openproject:15
              EOF

  tags = {
    Name = "main-instance"
  }
}

output "instance_id" {
  value = aws_instance.main.id
}

output "instance_public_ip" {
  value = aws_instance.main.public_ip
}

