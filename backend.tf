terraform{
  backend "s3" {
    bucket         = "terraform-state-backend-vamsee"
    key            = "terraform/openproject"
    region         = "us-west-1"
    encrypt        = true
  }
}
