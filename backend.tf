terraform{
  backend "s3" {
    bucket         = "my-terraform-state-bucket-two-tier-vamsee"
    key            = "terraform/vpc-ec2"
    region         = "ap-south-1"
    encrypt        = true
  }
}
