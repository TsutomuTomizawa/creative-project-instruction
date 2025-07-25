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

### リサーチ項目
1. **基本情報収集** → #AUDIENCE_INSIGHT
2. **ターゲット分析** → #AUDIENCE_INSIGHT  
3. **配信環境確認** → #PLATFORM_ANALYSIS
4. **競合分析** → #COMPETITOR_ANALYSIS
5. **市場調査**（必要に応じて） → #MARKET_RESEARCH

### 自動リサーチ
基本情報取得後、WebSearchとWebFetchツールを使用して
商品理解、競合分析、プラットフォーム調査を自動実行します。

※ 各項目の詳細はナレッジベースモジュールを参照



## 📋 Phase 1: ストーリーフロー構築（設計）

ナレーション原稿とストーリー構成を作成します。

### 実施項目
1. **フック作成** → #HOOK_METHODOLOGY
2. **ストーリーパターン選択** → #STORY_PATTERN
3. **ナレーション原稿作成** → #NARRATION_TONE
4. **体験要素の組み込み** → #EXPERIENCE_ELEMENTS
5. **CTA設計** → #CTA_STRATEGY

※ 各項目の詳細はナレッジベースモジュールを参照


## 📋 Phase 2: シーン制作

ナレーション原稿に基づいて、シーン構成と素材を作成します。

### 実施項目
1. **シーン構成作成** → #STORY_PATTERN
2. **素材リスト作成** → #MATERIAL_LIST
3. **AI生成プロファイル作成** → #AI_PROFILE
4. **プラットフォーム最適化**（必要に応じて） → #PLATFORM_OPTIMIZATION

※ 各項目の詳細はナレッジベースモジュールを参照

## 📝 最終成果物のアーティファクト出力

動画制作の最終段階で、以下のアーティファクトを作成します：

1. **動画構成表** - ナレーション原稿とシーン構成
2. **素材リスト** - #MATERIAL_LISTのフォーマットに従って作成
3. **AI生成プロファイル** - #AI_PROFILEのテンプレートに従って作成

※ 具体的なフォーマットは各ナレッジベースモジュールを参照