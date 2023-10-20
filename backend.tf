terraform {
  backend "s3" {
    bucket = "ishav-backend-bucket"
    key    = "terraformAssg2.tfstate"
    region = "ap-south-1"
  }
}