terraform{
  backend "s3" {
    bucket         = "terraform-state-backend-vamsee"
    key            = "terraform/openproject"
    region         = "ap-south-1"
    encrypt        = true
  }
}
