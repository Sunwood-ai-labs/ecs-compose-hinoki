terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    # バックエンドの設定は環境ごとに異なるため、
    # terraform initコマンド実行時に-backend-config引数で指定することを推奨
    key = "terraform.tfstate"
  }
}
