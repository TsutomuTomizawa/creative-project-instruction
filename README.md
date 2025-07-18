# Creative Studio Knowledge Base

クリエイティブ制作のための知識管理リポジトリです。

## 📚 使用方法

### Claudeプロジェクトでの使用（推奨）

文字数制限を回避するため、軽量版のインストラクションを使用します：

1. **エッセンシャル版を使用**
   - `/custom-instructions/essential.md` をClaude Projectsのカスタムインストラクションに設定
   - 約3,000文字で、文字数制限内に収まります

2. **詳細機能が必要な場合**
   - LP制作: `!load lp` で詳細インストラクションを読み込み
   - 動画広告制作: `!load video` で詳細インストラクションを読み込み
   - バナー制作: `!load banner` で詳細インストラクションを読み込み

### 従来版の使用

全機能を含む完全版を使用する場合：
- `/custom-instructions/main-instructions.md` を使用
- ※文字数制限により、Claude Projectsでは使用できない場合があります

## 構成

### ディレクトリ構造

- `knowledge-base/` - 制作に関する知識とガイドライン
  - `lp/` - ランディングページ制作
  - `video/` - 動画広告制作
  - `banner/` - バナー制作
  - `common/` - 共通リソース
- `custom-instructions/` - カスタムインストラクション
  - `essential.md` - 軽量版（推奨）
  - `main-instructions.md` - 完全版
- `instructions/` - 詳細インストラクション
  - `lp-detailed.md` - LP制作詳細
  - `video-detailed.md` - 動画広告制作詳細
  - `banner-detailed.md` - バナー制作詳細
- `templates/` - 各種テンプレート
- `examples/` - 実際の制作事例
- `scripts/` - 自動化スクリプト

### 制作フロー

1. **Phase 0: 構想（要件定義）**
   - 基本情報収集（参考情報・URL・ファイルの学習含む）
   - 商品・サービスリサーチ（口コミ・詳細調査）
   - ターゲット分析
   - 課題と競合分析
   - ゴール設定

2. **Phase 1: 構成（設計）**
   - 最適な構成パターン提案
   - ストーリーフロー設計
   - 各要素の役割定義

3. **Phase 2: 制作（実装）**
   - セクション別制作
   - 段階的確認
   - 最終調整