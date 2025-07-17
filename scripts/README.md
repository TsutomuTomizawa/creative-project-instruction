# 自動化スクリプト集

## 概要
知識ベースの作成・管理を効率化するためのスクリプト集です。

## 利用可能なスクリプト

### 1. generate-component.sh
新しいコンポーネント・パターンファイルを生成します。

**使用方法:**
```bash
./generate-component.sh [type] [category] [name]
```

**例:**
```bash
./generate-component.sh lp hero hero-animated
./generate-component.sh video 30sec-ads lifestyle-appeal
./generate-component.sh banner text-heavy price-focused
./generate-component.sh common content-tone scientific
```

**利用可能なtype:**
- `lp` - LPコンポーネント
- `video` - 動画パターン
- `banner` - バナーレイアウト
- `common` - 共通コンテンツ

### 2. generate-example.sh
成功事例・失敗事例ファイルを生成します。

**使用方法:**
```bash
./generate-example.sh [type] [category] [name] [success/failure]
```

**例:**
```bash
./generate-example.sh lp saas crm-success success
./generate-example.sh video 15sec-ads fitness-failure failure
./generate-example.sh banner google-ads fashion-success success
```

## 実行前の準備

### 権限付与
```bash
chmod +x generate-component.sh
chmod +x generate-example.sh
```

### ディレクトリ確認
スクリプトは `creative-project-instruction/scripts/` から実行してください。

## 生成されるファイル

### コンポーネントファイル
- 基本的な構造テンプレート
- 関連コンポーネントへのリンク
- 実装のポイント
- 成功指標

### 事例ファイル
- **成功事例**: 成果データ、成功要因、学習ポイント
- **失敗事例**: 失敗データ、問題点、改善提案

## 使用上の注意

1. **既存ファイルの上書き確認**: 同名ファイルが存在する場合は確認プロンプトが表示されます
2. **テンプレート編集必須**: 生成後は必ず内容を具体的に編集してください
3. **リンク確認**: 相互参照リンクが正しく設定されているか確認してください

## 今後の拡張予定

- パターン一覧生成スクリプト
- リンク整合性チェックスクリプト
- 事例データの統計分析スクリプト
- 自動テスト実行スクリプト

## トラブルシューティング

### 権限エラー
```bash
chmod +x script-name.sh
```

### ディレクトリエラー
スクリプトは `scripts/` ディレクトリから実行してください。

### 引数エラー
各スクリプトを引数なしで実行すると使用方法が表示されます。