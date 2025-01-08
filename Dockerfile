# ビルドステージ
FROM python:3.11-slim as builder

WORKDIR /app

# 必要なパッケージをインストール
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# 実行ステージ
FROM python:3.11-slim

WORKDIR /app

# ビルドステージからPythonパッケージをコピー
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

# アプリケーションファイルをコピー
COPY app.py .

# 必要なシステムライブラリをインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libgl1-mesa-glx \
    libglib2.0-0 && \
    rm -rf /var/lib/apt/lists/*

# 非rootユーザーを作成
RUN useradd -m appuser
USER appuser

# Gradioのポートを公開
EXPOSE 7860

# アプリケーションの起動
CMD ["python", "app.py"]
