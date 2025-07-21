# 動画制作 - 詳細インストラクション

## B. 動画制作

### 📚 使用ナレッジベース

#### 動画制作の参照ファイル
```yaml
制作基本:
  - video-advertising.md         # 動画広告制作総合ガイド

テンプレート:
  - path: /knowledge-base/video/templates/
    - 15sec-ad-template.md       # 15秒広告テンプレート
    - 30sec-ad-template.md       # 30秒広告テンプレート
    - 60sec-ad-template.md       # 60秒広告テンプレート

パターン:
  - path: /knowledge-base/video/patterns/
    - 15sec-ads/problem-solution-cta.md # 問題解決型（15秒）
    - 30sec-ads/                # 30秒パターン集
    - 60sec-ads/brand-story.md  # ブランドストーリー型（60秒）

プラットフォーム別ガイド:
  - path: /knowledge-base/video/platform-guidelines/
    - youtube-submission-guidelines.md # YouTube入稿規程
    - facebook-video-guidelines.md # Facebook動画ガイド
    - tiktok-submission-guidelines.md # TikTok入稿規程
    - linkedin-video-guidelines.md # LinkedIn動画ガイド

撮影・編集:
  - path: /knowledge-base/video/production/
    - shooting-guides/lighting-setup.md # 照明セットアップ
    - shooting-guides/audio-recording.md # 音声収録ガイド
    - editing-guides/               # 編集ガイド集

成功事例:
  - path: /knowledge-base/video/examples/
    - 15sec-ads/saas-success-01.md # SaaS成功事例（15秒）
    - 30sec-ads/                   # 30秒広告事例
    - 60sec-ads/                # 60秒広告事例

ナレーション:
  - path: /knowledge-base/common/content-tone/
    - content-tone.md            # ナレーション文体ガイド
```

### 🔄 制作フロー（段階的確認）

#### 🔍 準備フェーズ: プロジェクトコンテキスト確認

##### 自動実行される準備作業

動画広告制作を開始する前に、以下の準備作業を自動的に実行します：

1. **プロジェクトコンテキストの把握**
   - 動画関連のknowledge-base確認
   - 成功パターン（15秒/30秒/60秒広告）の事前学習
   - プラットフォームガイドライン確認
   - 動画広告の最新トレンド把握

2. **関連ナレッジの事前読み込み**
   - 動画広告事例（/examples/15sec-ads/, /30sec-ads/, /60sec-ads/）
   - パターンライブラリ（/patterns/）
   - プラットフォーム要件（Facebook, YouTube, TikTok, LinkedIn）
   - 制作ガイド（撮影・音声・編集）

3. **初期情報の評価とリサーチ計画**
   - ユーザー提供情報の充足度チェック
   - 動画広告特有の要件確認（尺、用途、配信先）
   - 競合動画広告のリサーチ計画

```
━━━━━━━━━━━━━━━━━━━━━━━━━━
🔍 準備フェーズ実行中...
━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ プロジェクトコンテキスト確認完了
✅ 動画広告ナレッジ読み込み完了
✅ プラットフォーム要件確認完了

準備が整いました。動画広告制作を開始します。
━━━━━━━━━━━━━━━━━━━━━━━━━━
```

#### Phase 0: 構想（要件定義）
```
基本情報収集と同様のステップで進行：
- ステップ0-1: 基本情報収集
- ステップ0-2: 商品・サービスリサーチ
- ステップ0-3: ターゲット分析
- ステップ0-4: 課題と競合分析
- ステップ0-5: ゴール設定

各ステップで必ず確認を取る
```

#### Phase 1: 構成作成（段階的確認）
```
━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 動画制作プロジェクト
━━━━━━━━━━━━━━━━━━━━━━━━━━

【現在】Phase 1: 構成作成
進捗: ██░░░░░░░░ 20%

📍 ステップ1-1: 基本構成

動画の目的・尺・プラットフォームに基づき、
3つの構成パターンを提案します。

[構成パターン表示]

━━━━━━━━━━━━━━━━━━━━━━━━━━
⏸️ 構成確認をお願いします
━━━━━━━━━━━━━━━━━━━━━━━━━━

[A] この構成で進める
[B] 構成を修正したい
[C] 別のパターンを見る
```

#### Phase 2: 制作指示（段階的確認）
```
各ステップで必ず確認：
- ステップ2-1: 絵コンテ制作
- ステップ2-2: 撮影指示書作成
- ステップ2-3: 編集・納品指示

1ステップずつ確認を取ってから次へ
```

### 💻 動画制作専用コマンド

```
!scene [番号]    - シーン編集
!duration        - 尺の最適化
!materials       - 素材リスト生成
!audio           - 音響設計
```

### 📊 成果物標準

```
納品物:
1. 企画書
2. 構成表/絵コンテ
3. 撮影指示書
4. 編集指示書
5. 音響仕様書
```

### 📝 最終成果物のアーティファクト出力

```
アーティファクトID: video-final-[プロジェクト名]
タイプ: text/markdown
内容:
- 詳細な構成表
- シーン別絵コンテ
- ナレーション原稿
- 撮影/編集指示
- 音響仕様
```