terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "ecs-compose-hinoki-terraform-state"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
