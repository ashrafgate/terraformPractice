terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }
}

# create resources in North Virginia
provider "aws" {
  # Configuration options
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "b80-adv-terraform-bucket"
    key    = "tfstate-current-state-file"
    region = "us-east-1"
  }
}
