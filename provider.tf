terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "devops-pratice-remote-state"
    key    = "expense-dev-k8-ws" #random key need to be given
    region = "us-east-1"
    dynamodb_table = "expense-dev-k8-ws"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}