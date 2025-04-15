variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}


variable "subnet_ids" {
  description = "A list of subnet IDs"
  type        = list(string)
}


variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}
