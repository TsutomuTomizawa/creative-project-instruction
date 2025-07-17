#!/bin/bash

# コンポーネントファイル生成スクリプト
# 使用方法: ./generate-component.sh [type] [category] [name]
# 例: ./generate-component.sh lp hero hero-animated

TYPE=$1
CATEGORY=$2
NAME=$3

if [ -z "$TYPE" ] || [ -z "$CATEGORY" ] || [ -z "$NAME" ]; then
    echo "使用方法: ./generate-component.sh [type] [category] [name]"
    echo "例: ./generate-component.sh lp hero hero-animated"
    echo ""
    echo "利用可能なtype:"
    echo "  lp       - LPコンポーネント"
    echo "  video    - 動画パターン"
    echo "  banner   - バナーレイアウト"
    echo "  common   - 共通コンテンツ"
    exit 1
fi

# ディレクトリ作成
BASE_DIR="../knowledge-base"
TARGET_DIR="$BASE_DIR/$TYPE"

case $TYPE in
    "lp")
        FULL_PATH="$TARGET_DIR/components/$CATEGORY"
        ;;
    "video")
        FULL_PATH="$TARGET_DIR/patterns/$CATEGORY"
        ;;
    "banner")
        FULL_PATH="$TARGET_DIR/layouts/$CATEGORY"
        ;;
    "common")
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

# テンプレート生成
cat > "$FILE_PATH" << EOF
# $NAME

## 概要
$NAMEの説明をここに記述

## 推奨用途
- 用途1
- 用途2
- 用途3

## 設計原則
1. **原則1**: 説明
2. **原則2**: 説明
3. **原則3**: 説明

## 実装のポイント
- ポイント1
- ポイント2
- ポイント3

## 成功指標
- 指標1: 目標値
- 指標2: 目標値
- 指標3: 目標値

## 関連コンポーネント
- [関連1](../path/to/related1.md) - 説明
- [関連2](../path/to/related2.md) - 説明

## 使用例
\`\`\`
具体的な使用例をここに記述
\`\`\`

## 注意事項
- 注意1
- 注意2
- 注意3
EOF

echo "ファイルを作成しました: $FILE_PATH"
echo "テンプレートを適切に編集してください。"