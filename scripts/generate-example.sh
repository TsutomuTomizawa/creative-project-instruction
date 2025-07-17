#!/bin/bash

# 事例ファイル生成スクリプト
# 使用方法: ./generate-example.sh [type] [category] [name] [success/failure]
# 例: ./generate-example.sh lp saas crm-success success

TYPE=$1
CATEGORY=$2
NAME=$3
RESULT=$4

if [ -z "$TYPE" ] || [ -z "$CATEGORY" ] || [ -z "$NAME" ] || [ -z "$RESULT" ]; then
    echo "使用方法: ./generate-example.sh [type] [category] [name] [success/failure]"
    echo "例: ./generate-example.sh lp saas crm-success success"
    echo ""
    echo "利用可能なtype:"
    echo "  lp       - LP事例"
    echo "  video    - 動画事例"
    echo "  banner   - バナー事例"
    echo ""
    echo "result: success または failure"
    exit 1
fi

# バリデーション
if [ "$RESULT" != "success" ] && [ "$RESULT" != "failure" ]; then
    echo "エラー: resultは 'success' または 'failure' である必要があります"
    exit 1
fi

# ディレクトリ作成
BASE_DIR="../knowledge-base"
TARGET_DIR="$BASE_DIR/$TYPE/examples"

case $TYPE in
    "lp")
        FULL_PATH="$TARGET_DIR"
        ;;
    "video")
        FULL_PATH="$TARGET_DIR/$CATEGORY"
        ;;
    "banner")
        FULL_PATH="$TARGET_DIR/$CATEGORY"
        ;;
    *)
        echo "エラー: 不明なtype: $TYPE"
        exit 1
        ;;
esac

# ディレクトリが存在しない場合は作成
mkdir -p "$FULL_PATH"

# ファイルパス
FILE_PATH="$FULL_PATH/$NAME.md"

# ファイルが既に存在する場合は確認
if [ -f "$FILE_PATH" ]; then
    echo "ファイル $FILE_PATH は既に存在します。"
    read -p "上書きしますか？ (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "キャンセルしました。"
        exit 1
    fi
fi

# 成功/失敗によるテンプレート分岐
if [ "$RESULT" == "success" ]; then
    # 成功事例テンプレート
    cat > "$FILE_PATH" << EOF
# $CATEGORY成功事例: $NAME

## 概要
- **商材**: 商品・サービス名
- **価格**: 価格帯
- **適用パターン**: [参照パターン](../patterns/pattern-name.md)

## 成果データ
- **KPI1**: 数値
- **KPI2**: 数値
- **KPI3**: 数値

## 成功要因

### 1. 要因1
説明

### 2. 要因2
説明

### 3. 要因3
説明

## 採用した構成/設計
\`\`\`
具体的な構成や設計内容
\`\`\`

## 学習ポイント
1. **ポイント1**: 説明
2. **ポイント2**: 説明
3. **ポイント3**: 説明

## 関連事例
- [関連成功事例](../examples/related-success.md)
- [関連失敗事例](../examples/related-failure.md)

## 活用したトーン
- **[トーン1](../../common/content-tone/tone1.md)** - 説明
- **[トーン2](../../common/content-tone/tone2.md)** - 説明
EOF
else
    # 失敗事例テンプレート
    cat > "$FILE_PATH" << EOF
# $CATEGORY失敗事例: $NAME

## 概要
- **商材**: 商品・サービス名
- **価格**: 価格帯
- **適用パターン**: [参照パターン](../patterns/pattern-name.md)

## 失敗データ
- **KPI1**: 数値（目標値）
- **KPI2**: 数値（目標値）
- **KPI3**: 数値（目標値）

## 失敗要因

### 1. 要因1
問題の説明

### 2. 要因2
問題の説明

### 3. 要因3
問題の説明

## 問題のあった構成/設計
\`\`\`
具体的な問題点
\`\`\`

## 改善提案

### 1. 改善点1
\`\`\`
❌ 問題: 内容
⭕ 改善: 内容
\`\`\`

### 2. 改善点2
\`\`\`
❌ 問題: 内容
⭕ 改善: 内容
\`\`\`

## 学習ポイント
1. **避けるべき点1**: 説明
2. **避けるべき点2**: 説明
3. **避けるべき点3**: 説明

## 関連事例
- [関連成功事例](../examples/related-success.md)
- [改善後の成功事例](../examples/improved-success.md)

## 改善後の推奨パターン
- **[推奨パターン1](../patterns/recommended1.md)** - 説明
- **[推奨パターン2](../patterns/recommended2.md)** - 説明
EOF
fi

echo "ファイルを作成しました: $FILE_PATH"
echo "テンプレートを適切に編集してください。"