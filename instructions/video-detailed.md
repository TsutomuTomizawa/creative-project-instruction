# 動画広告制作 - 詳細インストラクション

## B. 動画広告制作

### 📚 使用ナレッジベース（モジュール型）

#### 動画広告制作の参照ファイル
```yaml
# モジュール型ナレッジベース構造
# インデックス: /knowledge-base/video/index.md

# 優先度ベースの参照戦略
Phase 0（リサーチ）:
  core: なし（リサーチは独立）
  standard: 
    - #AUDIENCE_INSIGHT    # ターゲット分析
    - #COMPETITOR_ANALYSIS # 競合分析
    - #PLATFORM_ANALYSIS   # 配信環境分析
  optional: 
    - #MARKET_RESEARCH     # 市場調査

Phase 1（ストーリーフロー構築）:
  core: 
    - #HOOK_METHODOLOGY    # フック3段階プロセス
    - #STORY_PATTERN       # 14種類のストーリーパターン（1.2-1.5倍速対応）
    - #NARRATION_TONE      # 5トーン×8体験要素（1.2-1.5倍速対応）
  standard: 
    - #EXPERIENCE_ELEMENTS # 体験要素詳細
    - #CTA_STRATEGY        # CTA戦略
  optional: 
    - #VISUAL_RHYTHM       # ビジュアルリズム

Phase 2（シーン制作）:
  standard:
    - #MATERIAL_LIST       # 素材リスト作成
    - #AI_PROFILE          # AI生成プロファイル
  optional:
    - #PLATFORM_OPTIMIZATION # プラットフォーム最適化

# ワークフロー:
# Phase 0 (リサーチ) → Phase 1 (ナレーション原稿作成) → Phase 2 (シーン制作)
# 各Phaseで必要なモジュールのみを参照（トークン40%削減）
```


## 📋 Phase 0: リサーチ（要件定義）

基本情報を収集し、必要に応じて自動リサーチを実行します。

### 配信設定（必須）
1. **広告配信先プラットフォーム**
   - YouTube（インストリーム、バンパー、Shorts）
   - Instagram（Stories、Reels、フィード）
   - TikTok（インフィード）
   - Facebook（フィード、Stories）
   - X（Twitter）
   - LINE VOOM
   
2. **動画尺の設定**
   - 6秒（バンパー広告）
   - 15秒（標準短尺）
   - 30秒（標準）
   - 60秒（長尺）
   - カスタム尺

### リサーチステップ
```yaml
ステップ0-1A: 基本情報収集
  内容: 商品/サービス情報の整理
  参照: → /knowledge-base/video/research/AUDIENCE_INSIGHT.md
  実施内容:
    - 商品/サービス名の確認
    - 商品カテゴリの特定
    - 競合商品名の収集
    - 配信プラットフォームの確認

ステップ0-1B: 【必須】自動リサーチ実行
  内容: WebSearchによる基本情報収集（スキップ不可）
  
  重要: 以下の手順を必ず実際に実行すること（表示だけでなく、実際にツールを使用）
  
  実行手順:
    1. 基本情報から検索キーワードを生成:
       - 収集した商品名を中心に検索
       - 動的にキーワードを決定
    
    2. WebSearchツールで情報収集（1回実行）:
       実行例:
       - WebSearch(query="[商品名]") - 商品の基本情報収集
    
    3. 結果サマリーの作成と表示:
       - 収集したデータからフックワード候補を抽出
       - 商品の特徴や価値を把握
       - 動画広告に活かせる要素を特定
    
    重要情報のピックアップ基準:
       - 商品の主要な特徴
       - ターゲット層の示唆
       - 効果的なキーワード
       - 感情に訴える要素
    
    コンテキスト管理:
       - 検索結果は要約のみを保持
       - 生データは破棄し、抽出した洞察のみを記録
       - フック作成に必要な情報に特化
  
  実行通知:
    - 開始時: "🔍 自動リサーチを開始します..." → 実際にツールを実行
    - 検索実行時: "「[商品名]」を検索中..." → WebSearchを実行
    - 完了時: "✅ 自動リサーチ完了" → 実際の結果サマリーを表示
  
  注意事項:
    - 必ずWebSearchツールを実際に使用すること
    - 架空のデータや仮の結果を表示しないこと
    - エラーが発生した場合は正直に報告すること

ステップ0-2: ターゲット分析
  内容: 詳細なペルソナ設定
  参照: → /knowledge-base/video/research/AUDIENCE_INSIGHT.md
  前提: ステップ0-1Bの自動リサーチ結果を活用

ステップ0-3: 配信環境確認
  内容: プラットフォーム仕様の確認
  参照: → /knowledge-base/video/output/PLATFORM_ANALYSIS.md
  前提: ステップ0-1Bで収集したプラットフォーム情報を活用

ステップ0-4: 競合分析
  内容: 競合動画広告の分析
  参照: → /knowledge-base/video/research/COMPETITOR_ANALYSIS.md
  前提: ステップ0-1Bで収集した競合情報を活用

ステップ0-5: 市場調査（必要に応じて）
  内容: 業界トレンドの把握
  参照: → /knowledge-base/video/research/MARKET_RESEARCH.md
```

※ 各項目の詳細はナレッジベースモジュールを参照



## 📋 Phase 1: ストーリーフロー構築（設計）

ナレーション原稿とストーリー構成を作成します。

### 実施項目
1. **フック作成** → /knowledge-base/video/core/HOOK_METHODOLOGY.md
2. **ストーリーパターン選択** → /knowledge-base/video/core/STORY_PATTERN.md
3. **ナレーション原稿作成** → /knowledge-base/video/core/NARRATION_TONE.md
4. **体験要素の組み込み** → /knowledge-base/video/planning/EXPERIENCE_ELEMENTS.md
5. **CTA設計** → /knowledge-base/video/planning/CTA_STRATEGY.md

※ 各項目の詳細はナレッジベースモジュールを参照


## 📋 Phase 2: シーン制作

ナレーション原稿に基づいて、シーン構成と素材を作成します。

### 実施項目
1. **シーン構成作成** → /knowledge-base/video/core/STORY_PATTERN.md
2. **素材リスト作成** → /knowledge-base/video/output/MATERIAL_LIST.md
3. **AI生成プロファイル作成** → /knowledge-base/video/output/AI_PROFILE.md
4. **プラットフォーム最適化**（必要に応じて） → /knowledge-base/video/output/PLATFORM_OPTIMIZATION.md

※ 各項目の詳細はナレッジベースモジュールを参照

## 📝 最終成果物のアーティファクト出力

動画制作の最終段階で、以下のアーティファクトを作成します：

1. **動画構成表** - ナレーション原稿とシーン構成
2. **素材リスト（AI生成プロファイル統合版）** - /knowledge-base/video/output/MATERIAL_LIST.mdのフォーマットに従って、各素材の下にJSONプロファイルとAIプロンプトを配置

※ 具体的なフォーマットは/knowledge-base/video/output/MATERIAL_LIST.mdモジュールを参照