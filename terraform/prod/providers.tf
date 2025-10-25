terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">=4.33.0"
      configuration_aliases = [aws, aws.virginia]
    }
  }

  backend "s3" {}

  required_version = ">=1.2.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}
