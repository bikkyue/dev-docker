# 概要

ホスト機を汚したくないので、用意したdockerコンテナを使用して作業をする想定

## Dockerコマンドメモ

### 起動

```bash
docker compose up -d
```


### 起動&ビルド
```bash
docker compose up -d --build
```


### コンテナに入る(サービス名：dev)

```bash
docker compose exec dev bash
```

### 停止・削除

```bash
docker compose down
```

### コンテナの確認

```bash
docker ps -a
```

### 停止済みコンテナ・不要ボリューム等の一括削除

```bash
docker system prune --volumes
```


