provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "bluespeed-terraform"
    key    = "terraformDns"
    region = "us-east-1"
  }
}