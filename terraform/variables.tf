variable "aws_region" {
  description = "AWSのリージョン"
  type        = string
  default     = "ap-northeast-1"
}

variable "environment" {
  description = "環境名（dev, staging, prod等）"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "プロジェクト名"
  type        = string
  default     = "gradio-app"
}

variable "vpc_cidr" {
  description = "VPCのCIDRブロック"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "パブリックサブネットのCIDRブロックのリスト"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "プライベートサブネットのCIDRブロックのリスト"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "container_port" {
  description = "コンテナのポート番号"
  type        = number
  default     = 7860
}

variable "container_cpu" {
  description = "コンテナのCPUユニット"
  type        = number
  default     = 256
}

variable "container_memory" {
  description = "コンテナのメモリ(MiB)"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "ECSサービスのタスク数"
  type        = number
  default     = 2
}

variable "health_check_path" {
  description = "ヘルスチェックのパス"
  type        = string
  default     = "/"
}

variable "ecr_repository_name" {
  description = "ECRリポジトリ名"
  type        = string
  default     = "gradio-app"
}
