terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
      }
    }

    backend "s3"{
        bucket  = "sctp-ce3-tfstate-bucket"
        key     = "zaw-miniproject.tfstate"
        region  = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}

