# Creative Project Instruction - 依存関係管理ガイド

このファイルは、プロジェクト内のファイル間の依存関係と、変更時の必須チェック項目を定義します。
**重要: ファイルを編集する前に、必ずこのガイドを確認してください。**

## 🎯 プロジェクトの目的
このプロジェクトは、LP制作と動画広告制作のための構造化された知識ベースです。
各ファイルが特定の役割を持ち、相互に連携して効果的なクリエイティブ制作を支援します。

## 🏗️ プロジェクトのアーキテクチャ

このプロジェクトは**モジュール参照型フレームワーク**です：

### 基本原則
1. **detailed.mdは参照ガイド**
   - 具体的な内容は記載しない
   - ナレッジベースモジュールへの参照のみ記載
   - 「何を参照すべきか」を示すロードマップ

2. **ナレッジベースが実装**
   - 具体的なテンプレート、手法、フォーマット
   - #で始まるモジュール名で管理
   - 各モジュールが独立した知識単位

3. **重複を避ける**
   - 同じ内容を複数箇所に書かない
   - ナレッジベースが唯一の信頼できる情報源
   - detailed.mdで具体例を書かない

### 実装時の注意
- detailed.mdで「例：」「具体的には」などの記述は不要
- 「→ #MODULE_NAME」の参照で十分
- 詳細な手順やフォーマットはナレッジベースで定義

## 📋 主要ファイルの依存関係マップ

### 1. custom-instructions/essential.md（中核ファイル）
変更時に影響を受けるファイル：
- [ ] `lp-detailed.md` - LP制作の詳細部分
- [ ] `video-detailed.md` - 動画広告制作の詳細部分
- [ ] `README.md` - プロジェクト説明との整合性
- [ ] `knowledge-base/lp/` - LP用ナレッジベース構造（モジュールベース）
- [ ] `knowledge-base/video/` - 動画用ナレッジベース構造

### 2. 各detailed.mdファイル（特にlp-detailed.md、video-detailed.md）
変更時の確認事項：
- [ ] `custom-instructions/essential.md` の参照部分
- [ ] knowledge-base内の関連ファイル
- [ ] Phase構成の整合性
- [ ] 自動リサーチ実行の記述（video-detailed.mdの場合）

## 📂 現在のディレクトリ構造

```
creative-project-instruction/
├── custom-instructions/
│   └── essential.md                    # 中核インストラクションファイル
├── instructions/
│   ├── lp-detailed.md                  # LP制作詳細ガイド
│   └── video-detailed.md               # 動画広告制作詳細ガイド（バリエーション展開対応）
├── knowledge-base/
│   ├── lp/                            # LP制作ナレッジベース（モジュール化完了）
│   │   ├── index.md                   # モジュール管理インデックス
│   │   ├── core/                      # コアモジュール（priority: core）
│   │   │   ├── #VALUE_PROPOSITION.md  # 価値提示モジュール
│   │   │   ├── #ACTION_DRIVER.md      # 行動促進モジュール
│   │   │   └── #TRUST_BUILDING.md     # 信頼構築モジュール
│   │   ├── research/                  # リサーチモジュール
│   │   │   ├── #MARKET_ANALYSIS.md    # 市場分析
│   │   │   ├── #PERSONA_CREATION.md   # ペルソナ作成
│   │   │   └── #COMPETITOR_MAPPING.md # 競合分析
│   │   ├── planning/                  # プランニングモジュール
│   │   │   ├── #MODULE_SELECTION.md   # モジュール選択ガイド
│   │   │   ├── #STORY_MODULES.md      # ストーリーモジュール集
│   │   │   └── #FLOW_DESIGN.md        # フロー設計
│   │   ├── output/                    # アウトプットモジュール
│   │   │   ├── #COMPONENT_LIBRARY.md  # コンポーネントライブラリ
│   │   │   ├── #COPYWRITING_FORMULAS.md # コピーライティング公式
│   │   │   └── #OPTIMIZATION_GUIDE.md # 最適化ガイド
│   │   └── archive/                   # 旧ファイル保管場所
│   │       ├── 01-research.md         # リサーチフェーズ総合ガイド（レガシー）
│   │       ├── 02-module-selection.md # モジュール選択ガイド（レガシー）
│   │       ├── 03-story-modules.md    # ストーリーモジュール集（レガシー）
│   │       ├── 04-components.md       # コンポーネント仕様ガイド（レガシー）
│   │       ├── 05-copywriting.md      # コピーライティングガイド（レガシー）
│   │       └── 06-optimization.md     # 最適化Tips集（レガシー）
│   └── video/                         # 動画制作ナレッジベース（モジュール化完了）
│       ├── index.md                   # モジュール管理インデックス
│       ├── core/                      # コアモジュール（priority: core）
│       │   ├── #HOOK_METHODOLOGY.md   # フック3段階プロセス
│       │   ├── #STORY_PATTERN.md      # 14ストーリーパターン
│       │   └── #NARRATION_TONE.md     # 5トーン×8体験要素
│       ├── research/                  # リサーチモジュール
│       │   ├── #AUDIENCE_INSIGHT.md   # ターゲット分析
│       │   ├── #COMPETITOR_ANALYSIS.md # 競合分析
│       │   └── #MARKET_RESEARCH.md    # 市場調査
│       ├── planning/                  # プランニングモジュール
│       │   ├── #CTA_STRATEGY.md       # CTA戦略
│       │   ├── #EXPERIENCE_ELEMENTS.md # 体験要素詳細
│       │   └── #VISUAL_RHYTHM.md      # ビジュアルリズム
│       ├── output/                    # アウトプットモジュール
│       │   ├── #AI_PROFILE.md         # AI生成プロファイル
│       │   ├── #MATERIAL_LIST.md      # 素材リスト作成
│       │   ├── #PLATFORM_OPTIMIZATION.md # プラットフォーム最適化
│       │   └── #PLATFORM_ANALYSIS.md  # 配信環境分析
│       └── archive/                   # 旧ファイル保管場所
│           ├── modularization-plan.md # モジュール化計画書（完了）
│           ├── video-research.md      # リサーチフェーズ総合ガイド（レガシー）
│           ├── video-planning.md      # 動画制作総合ガイド（レガシー）
│           └── video-output.md        # 動画広告素材リスト＆AI生成プロファイルガイド（レガシー）
├── CLAUDE.md                          # 依存関係管理ガイド（このファイル）
└── README.md                          # プロジェクト全体説明
```

## 📊 ファイルの役割と使用タイミング

### Phase別の参照ファイル
- **Phase 0（リサーチ）**: #MARKET_ANALYSIS, #PERSONA_CREATION, #COMPETITOR_MAPPING（LP） / #AUDIENCE_INSIGHT, #COMPETITOR_ANALYSIS, #MARKET_RESEARCH（動画）
- **Phase 0.5（選択）**: #MODULE_SELECTION（LP） / なし（動画）
- **Phase 1（構成）**: #STORY_MODULES, #FLOW_DESIGN（LP） / #HOOK_METHODOLOGY, #STORY_PATTERN, #NARRATION_TONE（動画）
- **Phase 2（制作）**: #COMPONENT_LIBRARY, #COPYWRITING_FORMULAS（LP） / #AI_PROFILE, #MATERIAL_LIST, #PLATFORM_OPTIMIZATION, #PLATFORM_ANALYSIS（動画）
- **アーティファクト作成時**: #OPTIMIZATION_GUIDE（LP） / #AI_PROFILE, #MATERIAL_LIST（動画・素材リスト＆AI生成Profile出力）

## 🚨 変更チェックリスト

### A. 機能追加・変更時
1. **custom-instructions/essential.md を更新した場合**
   - [ ] 該当するdetailed.mdファイルを更新
   - [ ] README.md の説明と矛盾がないか確認
   - [ ] knowledge-base内の参照ファイルが存在するか確認

2. **新しいナレッジベースファイルを参照した場合**
   - [ ] ファイルが実際に存在するか確認
   - [ ] パスが正しいか検証
   - [ ] 関連するdetailed.mdファイルにも追記

3. **用語や名称を変更した場合**
   - [ ] 全ファイル横断で検索・置換を実施
   - [ ] ファイル名・フォルダ名も確認
   - [ ] コマンド名も更新されているか確認

4. **Phase構成を変更した場合**
   - [ ] LP制作: Phase 0 → Phase 0.5 → Phase 1 → Phase 2
   - [ ] 動画制作: Phase 0 → Phase 1 → Phase 2
   - [ ] ナレッジベースの参照が適切か確認

### B. ファイル構造変更時
1. **ファイル名・フォルダ名を変更した場合**
   - [ ] 全ての参照パスを更新
   - [ ] custom-instructions/essential.md のナレッジベース参照
   - [ ] 各detailed.mdファイルの参照

2. **新規ファイルを追加した場合**
   - [ ] 適切なディレクトリに配置
   - [ ] 関連ファイルから参照を追加
   - [ ] README.md のディレクトリ構造を更新


## 🔧 変更実施の推奨手順

1. **変更前**
   - このCLAUDE.mdで影響範囲を確認
   - 関連ファイルをリストアップ

2. **変更実施**
   - メインファイルを修正
   - チェックリストに従って関連ファイルを更新
   - 新規作成が必要なファイルを作成

3. **変更後**
   - 全ての参照が正しいか確認
   - 用語の統一性を検証
   - テスト: essential.mdからの読み込みフローを確認

## 💡 ベストプラクティス

1. **小さな変更でも依存関係を確認**
   - 用語一つの変更でも複数ファイルに影響する可能性

2. **ナレッジベース参照は実在確認**
   - 新しいパスを追加する前にファイルを作成

3. **ファイル間の整合性**
   - essential.mdと各detailed.mdで機能説明が矛盾しないように

4. **定期的な整合性チェック**
   - 大きな変更後は全体レビューを実施

5. **Phase構成の違い**
   - LP制作: Phase 0.5（モジュール選択）を維持
   - 動画制作: Phase 0 → Phase 1（フック3段階プロセス＋テイスト選択） → Phase 2

6. **動画ナレッジベースの特徴（モジュール化完了）**
   - **モジュール型構造**：
     - 13個のモジュールすべて完成
     - コアモジュール3つ：#HOOK_METHODOLOGY, #STORY_PATTERN, #NARRATION_TONE
     - リサーチモジュール3つ：#AUDIENCE_INSIGHT, #COMPETITOR_ANALYSIS, #MARKET_RESEARCH
     - プランニングモジュール3つ：#CTA_STRATEGY, #EXPERIENCE_ELEMENTS, #VISUAL_RHYTHM
     - アウトプットモジュール4つ：#AI_PROFILE, #MATERIAL_LIST, #PLATFORM_OPTIMIZATION, #PLATFORM_ANALYSIS
     - index.mdで優先度別アクセス管理
     - トークン40%削減、応答速度20%向上達成
   - **レガシーファイル**（archiveフォルダに保管）：
     - video-research.md, video-planning.md, video-output.md
   - Phase 1で「訴求型選定→バリエーション選択→文言展開→テイスト・体験要素選択」の4段階実施
   - 最終成果物：フック文言パターン（5つ以上）＋テイスト別ナレーション＋素材リスト＋AI生成プロファイル

7. **自動リサーチ機能（動画制作）**
   - video-detailed.mdのステップ0-1完了後に自動実行
   - WebSearchとWebFetchツールを活用
   - 商品理解、競合分析、プラットフォーム調査を自動化

8. **動画素材管理の新アプローチ**
   - video-output.mdで素材リストとAI生成プロファイルに特化
   - 制作指示書形式を廃止し、実用的な素材生成に集中
   - バリエーション管理とプラットフォーム最適化を強化

9. **ナレーションテイスト機能（動画制作）**
   - 5つのテイスト（プロフェッショナル、フレンドリー、エネルギッシュ、エモーショナル、ニュートラル）
   - 8つの体験要素（悩み、失敗談、きっかけ、実感、喜び、後悔、驚き、比較）
   - テイストと体験要素の組み合わせで共感度の高いナレーションを生成

10. **モジュール化の完了**
   - **完了済み**: 
     - 全13モジュールの作成完了
     - index.mdでの管理体制確立
     - video-detailed.mdの更新完了
     - レガシーファイルのアーカイブ完了
   - **運用フェーズ**:
     - 必要に応じてモジュール内容の改善
     - 新規モジュールの追加検討
     - ユーザーフィードバックに基づく最適化
     - **重要**: モジュール更新時は必ずindex.mdも同時に検証・更新

## 📋 モジュールのメタデータ管理

### モジュール更新時の必須チェックリスト

ナレッジベースのモジュール（`/knowledge-base/video/`または`/knowledge-base/lp/`内の`#`で始まるファイル）を更新する際は、以下のメタデータを必ず確認・更新してください：

1. **メタデータヘッダーの確認**
   - [ ] `marker`: ユニークで、ファイル名と一致（例：`#CTA_STRATEGY`）
   - [ ] `prefix`: コンテキストを適切に表現する文字列
   - [ ] `priority`: `core`、`standard`、`optional`のいずれか
   - [ ] `tags`: 検索性を考慮した関連キーワードの配列
   - [ ] `dependencies`: 他モジュールとの依存関係を正確に記載
   - [ ] `conversation_tracking`: 会話中で追跡すべき項目
   - [ ] `version`: バージョン番号を更新
   - [ ] `last_updated`: 更新日を記録（YYYY-MM-DD形式）

### メタデータフィールドの説明

```yaml
---
marker: #MODULE_NAME           # 検索・参照用の一意識別子
prefix: "CONTEXT: 説明"        # AIのコンテキスト理解用
title: モジュール名            # 人間が読む用のタイトル
priority: standard             # core/standard/optional
cache_hint: stable            # stable/dynamic
category: planning            # research/planning/output
tags: [タグ1, タグ2]          # 検索用キーワード
dependencies:
  required: []                # 必須の前提モジュール
  recommended: []             # 併用推奨モジュール
conversation_tracking:        # 会話内で追跡する項目
  - 項目1
  - 項目2
version: 1.0                  # バージョン管理
last_updated: 2025-01-24      # 最終更新日
---
```

### タグ管理のベストプラクティス

**一般カテゴリタグ**：
- `フック`、`ストーリー`、`ナレーション`、`CTA`
- `リサーチ`、`分析`、`戦略`、`実装`

**機能別タグ**：
- `心理学`、`データ分析`、`最適化`、`テンプレート`
- `ガイドライン`、`チェックリスト`、`事例`

**技術タグ**：
- `AI生成`、`プラットフォーム`、`自動化`、`測定`

### 依存関係の管理ルール

1. **required（必須依存）**：
   - このモジュールを使用する前に必ず参照すべきモジュール
   - 例：`#EXPERIENCE_ELEMENTS`は`#NARRATION_TONE`を必須とする

2. **recommended（推奨依存）**：
   - 併用することで効果が高まるモジュール
   - 例：`#CTA_STRATEGY`は`#HOOK_METHODOLOGY`との併用を推奨

3. **循環参照の防止**：
   - AがBを必須とし、BがAを必須とする関係は避ける
   - 相互推奨は可能

### モジュール変更時の影響確認【必須】

#### 1. **index.mdの更新（最重要）**：
モジュールを変更した際は、**必ず**index.mdも確認・更新してください。

**必須確認項目**：
- [ ] モジュールのtitleがindex.mdの記載と一致しているか
- [ ] priorityの変更がPhase別配置に正しく反映されているか
- [ ] 新規tagsが目的別検索セクションに追加されているか
- [ ] モジュールの説明文が最新の機能を正確に表現しているか
- [ ] Phase別アクセスガイドでの参照順序が適切か

**具体的な検証ポイント**：
```
□ title: メタデータとindex.mdで同一
□ priority: core/standard/optionalの配置確認
□ tags: 新規タグの検索セクション追加
□ 説明文: 機能変更を反映した内容
□ 依存関係: 前後のモジュールとの整合性
```

#### 2. **detailed.mdファイルの確認**：
- [ ] 該当モジュールへの参照箇所（video-detailed.mdまたはlp-detailed.md）
- [ ] 参照コンテキストが適切か
- [ ] Phase別の使用タイミングが正しいか

#### 3. **他モジュールへの影響**：
- [ ] このモジュールを依存関係に含む他モジュールの確認
- [ ] 破壊的変更の場合は関連モジュールも更新
- [ ] 依存関係の双方向チェック（A→B、B→A）

### モジュール新規作成時の手順

1. ファイル名を`#MODULE_NAME.md`形式で作成
2. 上記メタデータヘッダーを記載
3. **index.mdに追加（必須）**：
   - 適切なPhaseとpriorityで配置
   - モジュールの説明文を記載
   - 目的別検索セクションへの追加検討
4. detailed.mdファイルの該当箇所に参照を追加
5. 関連モジュールのdependenciesを更新
6. **双方向の整合性確認**：
   - 新規モジュール→既存ファイル：参照が正しいか
   - 既存ファイル→新規モジュール：必要な参照を追加したか

