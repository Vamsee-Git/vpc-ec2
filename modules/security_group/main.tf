variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

resource "aws_security_group" "main" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "main-sg"
  }
}

output "security_group_id" {
  value = aws_security_group.main.id
}
