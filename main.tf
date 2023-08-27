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
    access_key = "AKIATXF4JQPH44YVILU2"
    secret_key = "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"
}