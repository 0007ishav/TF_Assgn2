terraform {
  backend "s3" {
    bucket = "ishav-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}