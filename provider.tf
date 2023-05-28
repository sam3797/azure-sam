provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "my-bucket-3797"
    key    = "terraform.tfstate"
    #region = "us-east-1"
  }
}
