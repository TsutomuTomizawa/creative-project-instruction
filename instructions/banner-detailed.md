# バナー制作 - 詳細インストラクション

## C. バナー制作

### 📚 使用ナレッジベース

#### バナー制作の参照ファイル
```yaml
デザイン基本:
  - banner-design.md             # バナーデザイン総合ガイド

サイズ別仕様:
  - path: /knowledge-base/banner/sizes/
    - google-ads/300x250.md      # Google Ads レクタングル
    - facebook-ads/facebook-ad-sizes.md # Facebook広告サイズ一覧
    - twitter-ads/twitter-ad-sizes.md # Twitter広告サイズ一覧

レイアウト:
  - path: /knowledge-base/banner/layouts/
    - text-heavy/headline-focused.md # テキスト中心型
    - visual-heavy/product-showcase.md # ビジュアル中心型

プラットフォーム別ガイド:
  - path: /knowledge-base/banner/platform-guidelines/
    - google-ads-submission-guidelines.md # Google入稿規程
    - facebook-submission-guidelines.md # Facebook入稿規程
    - twitter-submission-guidelines.md # Twitter入稿規程
    - instagram-submission-guidelines.md # Instagram入稿規程
    - linkedin-submission-guidelines.md # LinkedIn入稿規程

参考事例:
  - path: /knowledge-base/banner/examples/
    - google-ads/                # Google広告事例
    - facebook-ads/              # Facebook広告事例
    - twitter-ads/               # Twitter広告事例

ビジュアル設計:
  - /knowledge-base/lp/visual-json-guide.md # JSON仕様書作成

コピー作成:
  - path: /knowledge-base/common/content-tone/
    - content-tone.md            # コピー文体ガイド
```

### 🔄 制作フロー（段階的確認）

#### Phase 0: 構想（要件定義）
```
基本情報収集と同様のステップで進行：
- ステップ0-1: 基本情報収集
- ステップ0-2: ターゲット分析
- ステップ0-3: 課題と競合分析
- ステップ0-4: ゴール設定

各ステップで必ず確認を取る
```

#### Phase 1: デザイン設計（段階的確認）
```
━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 バナー制作プロジェクト
━━━━━━━━━━━━━━━━━━━━━━━━━━

【現在】Phase 1: デザイン設計
進捗: ██░░░░░░░░ 20%

📍 ステップ1-1: レイアウト設計

プラットフォーム・サイズに基づく
3つのレイアウト案を提案します。

[レイアウト案表示]

━━━━━━━━━━━━━━━━━━━━━━━━━━
⏸️ レイアウト確認をお願いします
━━━━━━━━━━━━━━━━━━━━━━━━━━

[A] このレイアウトで進める
[B] レイアウトを修正したい
[C] 別のパターンを見る
```

#### Phase 2: 制作展開（段階的確認）
```
各ステップで必ず確認：
- ステップ2-1: 全サイズ展開
- ステップ2-2: A/Bテスト案作成
- ステップ2-3: 入稿準備

1ステップずつ確認を取ってから次へ
```

### 💻 バナー制作専用コマンド

```
!size [platform] - サイズ規格確認
!layout [type]   - レイアウト提案
!color [業界]    - カラーパレット
!preview all     - 全サイズプレビュー
```

### 📊 成果物標準

```
納品物:
1. デザイン仕様書
2. 全サイズ展開表
3. コピー一覧
4. 入稿チェックリスト
5. A/Bテスト案
```

### 📝 最終成果物のアーティファクト出力

```
アーティファクトID: banner-final-[プロジェクト名]
タイプ: text/markdown
内容:
- 全サイズデザイン仕様
- レイアウト詳細
- コピー全パターン
- カラーコード
- 入稿チェックリスト
```