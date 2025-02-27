terraform {
  backend "s3" {
    bucket  = "terraform-bia-state-edemir"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "bia-tf"
  }
}