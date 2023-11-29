# Root of the Fairview Homelab for cattivi.com and cattivi.local

terraform {
  cloud {
    organization = "Cattivi"

    workspaces {
      name = "networking-fairview"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}
