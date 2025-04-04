variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "MyKeyPair"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0e35ddab05955cf57"
}

variable "instance_type" {
  description = "Instance type "
  type        = string
  default     = "t2.mini"
}
