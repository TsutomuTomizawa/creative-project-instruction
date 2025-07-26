# LP制作 - 詳細インストラクション

## A. ランディングページ制作

### 📚 使用ナレッジベース

#### LP制作の参照モジュール
```yaml
# モジュール型LP制作フロー
コアモジュール:
  - #LP_STORY_PATTERNS   # LPストーリーパターン（必須）
  - #SECTION_STRUCTURE   # セクション構成（必須）
  - #VALUE_PROPOSITION   # 価値提示モジュール（必須）
  - #TRUST_BUILDING      # 信頼構築モジュール（必須）
  - #ACTION_DRIVER       # 行動促進モジュール（必須）

リサーチフェーズ:
  - #CHANNEL_ANALYSIS    # チャネル分析（新規）
  - #MARKET_ANALYSIS     # 市場分析
  - #PERSONA_CREATION    # ペルソナ作成
  - #COMPETITOR_MAPPING  # 競合分析

プランニングフェーズ:
  - #LP_STORY_PATTERNS   # ストーリーパターン選択
  - #SECTION_STRUCTURE   # セクション構成設計
  - #FLOW_DESIGN         # フロー設計
  - #SECTION_DESIGN_WORKSHOP # 統合設計ワークショップ（新規）

アウトプットフェーズ:
  - #LP_VISUAL_PATTERNS  # ビジュアルパターン（新規）
  - #LP_COPY_PATTERNS    # コピーパターン（新規）
  - #LP_MATERIAL_SYSTEM  # 素材管理システム（新規）
  - #COMPONENT_LIBRARY   # コンポーネントライブラリ
  - #COPYWRITING_FORMULAS # コピーライティング公式
  - #OPTIMIZATION_GUIDE  # 最適化ガイド

# ワークフロー:
# Phase 0 (リサーチ) → Phase 1 (ストーリー設計) → Phase 2 (セクション制作)
```

## 📋 Phase 0: リサーチ（要件定義）

### 配信チャネル設定（最初に実施）
```yaml
チャネル設定:
  内容: 広告流入チャネルの特定と分析
  参照: → /knowledge-base/lp/research/CHANNEL_ANALYSIS.md
  
  設定項目:
    - 広告プラットフォーム（Google/Facebook/Yahoo等）
    - 流入温度感（顕在/準顕在/潜在）
    - デバイス傾向（PC/SP比率）
```

### リサーチステップ
```yaml
実施ステップ:
  ステップ1-A: 
    内容: 基本情報・参考情報の収集
    参照: → /knowledge-base/lp/research/MARKET_ANALYSIS.md
    実施内容:
      - 商品/サービス名の確認
      - 商品カテゴリの特定
      - 競合商品名の収集
      - その他参考情報の整理
    
  ステップ1-B: 【必須】自動リサーチ実行
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
         - 収集したデータから主要な発見をまとめる
         - 商品の特徴や価値を抽出
         - 次のステップへの示唆を提供
      
      重要情報のピックアップ基準:
         - 商品の主要な特徴
         - ターゲット層の示唆
         - 価格帯や提供形態
         - 差別化ポイント
      
      コンテキスト管理:
         - 検索結果は要約のみを保持
         - 生データは破棄し、抽出した洞察のみを記録
         - 次フェーズで必要な情報に絞って整理
    
    実行通知:
      - 開始時: "🔍 自動リサーチを開始します..." → 実際にツールを実行
      - 検索実行時: "「[商品名]」を検索中..." → WebSearchを実行
      - 完了時: "✅ 自動リサーチ完了" → 実際の結果サマリーを表示
    
    注意事項:
      - 必ずWebSearchツールを実際に使用すること
      - 架空のデータや仮の結果を表示しないこと
      - エラーが発生した場合は正直に報告すること
    
  ステップ2:
    内容: ターゲット分析
    参照: → /knowledge-base/lp/research/PERSONA_CREATION.md
    前提: ステップ1-Bの自動リサーチ結果を活用
    
  ステップ3:
    内容: チャネル別流入分析
    参照: → /knowledge-base/lp/research/CHANNEL_ANALYSIS.md
    
  ステップ4:
    内容: 競合LP分析
    参照: → /knowledge-base/lp/research/COMPETITOR_MAPPING.md
    前提: ステップ1-Bで収集した競合情報を活用
```

※ 各ステップの詳細はナレッジベースモジュールを参照

## 📋 Phase 1: ストーリー設計（新規）

```yaml
実施ステップ:
  ステップ5:
    内容: LPストーリーパターン選択
    参照: → /knowledge-base/lp/planning/LP_STORY_PATTERNS.md
    実施項目:
      - 5つの基本パターンから選択
      - チャネル×商品特性での判定
      - ユーザー説得プロセス定義
    
  ステップ6:
    内容: セクション構成設計
    参照: → /knowledge-base/lp/planning/SECTION_STRUCTURE.md
    実施項目:
      - 標準6セクション構成の採用
      - 各セクションの役割定義
      - 離脱防止ポイント設計

  ステップ7:
    内容: セクション統合設計ワークショップ
    参照: → /knowledge-base/lp/planning/SECTION_DESIGN_WORKSHOP.md
    実施項目:
      - ストーリーパターンに基づくセクション構成
      - ユーザー心理状態の定義
      - 感情曲線の設計（-3〜+3）
      - セクション間接続の具体化
      - 複数案の検討と精緻化
    
    ワークショップ実施:
      1. 基本テンプレートから開始
      2. テーブル形式で統合設計
      3. フィードバックによる改善
      4. 最終設計書の作成
```

※ ストーリー設計の詳細はナレッジベースモジュールを参照

## 📋 Phase 2: セクション制作

```yaml
実施ステップ:
  ステップ8:
    内容: セクション別コンテンツ制作
    
    各セクションで実施:
      1. 役割と効果の確認
         参照: → /knowledge-base/lp/planning/SECTION_STRUCTURE.md
         
      2. ビジュアルパターン選択
         参照: → /knowledge-base/lp/output/LP_VISUAL_PATTERNS.md
         
      3. コピーパターン選択
         参照: → /knowledge-base/lp/output/LP_COPY_PATTERNS.md
         
      4. 素材定義
         参照: → /knowledge-base/lp/output/LP_MATERIAL_SYSTEM.md

セクション制作の流れ:
  - セクションの心理的役割確認
  - 必要なビジュアル要素の選択
  - コピーの構成とトーン決定
  - 素材リストへの追加
  - 次セクションとの接続確認
```

※ 各要素の選択基準と組み合わせ理論はナレッジベースモジュールを参照

## 📝 最終成果物のアーティファクト出力

LP制作の最終段階で、以下のアーティファクトを作成します：

1. **LP構成表** - 全セクションの構成とコンテンツ
2. **素材リスト** - /knowledge-base/lp/output/LP_MATERIAL_SYSTEM.mdのフォーマットに従って、各素材の役割・効果・AI生成プロファイルを統合

※ 具体的なフォーマットは各ナレッジベースモジュールを参照

## 💻 LP制作専用コマンド

### 利用可能なコマンド
```
!story [パターン]  - ストーリーパターン適用
!section [番号]    - セクション別制作開始
!visual [パターン] - ビジュアルパターン選択
!copy [パターン]   - コピーパターン適用
!material          - 素材リスト生成
```

### 詳細インストラクションのロード
```
!load lp         - LP制作の詳細インストラクションを読み込み
!load video      - 動画広告制作の詳細インストラクションを読み込み
```