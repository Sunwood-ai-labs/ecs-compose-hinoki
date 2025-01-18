<p align="center">
  <img src="assets/header.svg" width="100%" alt="ECS Compose Hinoki">
  <h1 align="center">🐳 ECS Compose Hinoki 🚀</h1>
</p>

<p align="center">
  <a href="https://github.com/Sunwood-ai-labs/ecs-compose-hinoki">
    <img alt="GitHub Repo" src="https://img.shields.io/badge/github-ecs--compose--hinoki-blue?logo=github">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/ecs-compose-hinoki/blob/main/LICENSE">
    <img alt="License" src="https://img.shields.io/github/license/Sunwood-ai-labs/ecs-compose-hinoki?color=green">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/ecs-compose-hinoki/stargazers">
    <img alt="GitHub stars" src="https://img.shields.io/github/stars/Sunwood-ai-labs/ecs-compose-hinoki?style=social">
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python" alt="Python">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker" alt="Docker">
  <img src="https://img.shields.io/badge/AWS_ECS-FF9900?style=for-the-badge&logo=amazonaws" alt="AWS ECS">
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform" alt="Terraform">
</p>

<h2 align="center">
<a href="README.md"><img src="https://img.shields.io/badge/ドキュメント-日本語-white.svg" alt="JA doc"/></a>
<a href="docs/README.en.md"><img src="https://img.shields.io/badge/english-document-white.svg" alt="EN doc"></a>
</h2>

## 🚀 プロジェクト概要

ECS Compose Hinokiは、AWS ECSでのコンテナアプリケーションのデプロイを簡素化するためのテンプレートプロジェクトです。Docker Composeの設定からAWS ECSへのデプロイまでを、Terraformを使用して自動化します。

## ✨ 主な機能

1. **Docker Compose対応**: ローカル開発環境とECS環境の一貫性を保持
2. **Terraform管理**: インフラストラクチャのコード化（IaC）による環境構築の自動化
3. **ECSオートスケーリング**: 負荷に応じた自動スケーリングの設定
4. **セキュリティ設定**: VPCやセキュリティグループの適切な設定

## 📦 前提条件

- Docker
- Terraform
- AWS CLI（設定済み）
- Python 3.8以上

## 🌿 環境構築

1. **リポジトリのクローン**:
   ```bash
   git clone https://github.com/Sunwood-ai-labs/ecs-compose-hinoki.git
   cd ecs-compose-hinoki
   ```

2. **環境変数の設定**:
   ```bash
   cp .env.example .env
   # .envファイルを編集して必要な変数を設定
   ```

3. **依存関係のインストール**:
   ```bash
   pip install -r requirements.txt
   ```

## 🚀 使用方法

### ローカル開発環境

1. **Docker Composeでアプリケーションを起動**:
   ```bash
   docker-compose up -d
   ```

2. **アプリケーションの動作確認**:
   ```bash
   curl http://localhost:8000
   ```

### ECSへのデプロイ

1. **Terraformの初期化**:
   ```bash
   cd terraform
   terraform init
   ```

2. **インフラストラクチャのプロビジョニング**:
   ```bash
   terraform plan
   terraform apply
   ```

## 🏗️ プロジェクト構造

```
ecs-compose-hinoki/
├── app.py              # Pythonアプリケーション
├── Dockerfile          # コンテナイメージ定義
├── docker-compose.yml  # ローカル開発環境設定
├── requirements.txt    # Pythonパッケージ依存関係
└── terraform/          # Terraformモジュール
    ├── main.tf          # メインの設定
    ├── networking.tf    # VPC関連の設定
    ├── security.tf      # セキュリティグループ設定
    └── variables.tf     # 変数定義
```

## 🔧 設定

### Docker Compose

`docker-compose.yml`で以下の設定が可能です：
- コンテナのポートマッピング
- 環境変数の設定
- ボリュームのマウント

### Terraform

`terraform/`ディレクトリ内の各ファイルで以下の設定が可能です：
- ECSクラスターの設定
- オートスケーリングの設定
- VPCとサブネットの設定
- セキュリティグループのルール

## 🤝 コントリビューション

1. このリポジトリをフォーク
2. 新しいブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add some amazing feature'`)
4. ブランチにプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを作成

## 📄 ライセンス

このプロジェクトはMITライセンスの下で公開されています。詳細は[LICENSE](LICENSE)ファイルをご覧ください。
