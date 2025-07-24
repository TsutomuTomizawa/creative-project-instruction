# 動画ナレッジベースモジュール化計画書 v2.0
## 軽量コンテキストエンジニアリング版

このドキュメントは、動画制作ナレッジベースを現在の3ファイル構造から、コンテキストエンジニアリングを活用したモジュール型システムへ移行するための実装計画書です。

## 目次

1. [現状分析](#現状分析)
2. [コンテキストエンジニアリング戦略](#コンテキストエンジニアリング戦略)
3. [新アーキテクチャ設計](#新アーキテクチャ設計)
4. [段階的実装計画](#段階的実装計画)
5. [Claudeプロジェクト対応](#claudeプロジェクト対応)
6. [品質保証とパフォーマンス指標](#品質保証とパフォーマンス指標)

---

## 現状分析

### 現在の構造

```
knowledge-base/video/
├── video-research.md    # リサーチフェーズ総合ガイド（775行）
├── video-planning.md    # 動画広告パターン総合ガイド（1861行）
└── video-output.md      # 素材リスト＆AI生成プロファイルガイド（690行）
```

### 課題

1. **ファイルサイズの肥大化**
   - 各ファイルが巨大で、必要な情報を探すのが困難
   - AIのコンテキストウィンドウを無駄に消費

2. **更新の困難性**
   - 新しい方法論を追加する際、既存の大きなファイルを編集する必要
   - バージョン管理が複雑

3. **再利用性の低さ**
   - 同じパターンを異なるコンテキストで使いたい場合の柔軟性不足
   - 部分的な参照が困難

4. **スケーラビリティの限界**
   - 知識が増えるにつれてファイルがさらに巨大化
   - パフォーマンスへの影響

### 期待される改善効果

1. **効率的な情報アクセス**
   - 必要な方法論だけをピンポイントで参照
   - 処理速度の向上（40%のトークン削減、20%の応答速度向上）

2. **拡張性の向上**
   - 新しい方法論は新しいファイルとして追加
   - 既存構造への影響なし

3. **保守性の改善**
   - 各ファイルが単一責任原則に従う
   - 更新箇所が明確化

4. **コンテキスト最適化**
   - KVキャッシュのヒット率向上
   - 安定したプレフィックスによる高速化
   - 優先度ベースの効率的な参照

---

## コンテキストエンジニアリング戦略

### 採用する手法（Phase B: 軽量版）

#### 1. 安定プレフィックス戦略
```yaml
# 各モジュールに固定プレフィックスを設定
prefix: "PLANNING_CONTEXT: フック作成方法論"
```
- **効果**: KVキャッシュの再利用率向上
- **実装**: 各モジュールのメタデータに追加

#### 2. 優先度ベースの階層管理
```yaml
priority: core     # 常に参照（高速アクセス）
priority: standard # 通常参照
priority: optional # 必要時のみ参照
```
- **効果**: トークン使用の最適化
- **実装**: index.mdで優先度別に整理

#### 3. キャッシュヒントの活用
```yaml
cache_hint: stable   # 変更頻度が低い
cache_hint: dynamic  # 頻繁に更新される
```
- **効果**: AIの処理効率向上
- **実装**: メタデータで明示

### Claudeプロジェクトでの制約と対応

1. **動的状態管理 → 会話内メモリ**
   - ファイルへの書き込み不可
   - セッション内でAIが状態を追跡

2. **パフォーマンス測定 → 推定値使用**
   - リアルタイム計測不可
   - 事前テストによる推定値を活用

---

## 新アーキテクチャ設計

### ディレクトリ構造

```
knowledge-base/video/
├── index.md                           # 優先度別モジュール管理
├── modularization-plan.md            # この計画書
├── archive/                          # 旧ファイルの保管場所
│
├── core/                             # コアモジュール（priority: core）
│   ├── #HOOK_METHODOLOGY.md         # フック作成方法論
│   ├── #STORY_PATTERN.md           # ストーリーパターン集
│   └── #NARRATION_TONE.md          # ナレーショントーン
│
├── research/                         # リサーチフェーズ用（priority: standard）
│   ├── #BASIC_INFO_TEMPLATE.md      # 基本情報収集テンプレート
│   ├── #COMPETITOR_ANALYSIS.md       # 競合分析手法
│   ├── #AUDIENCE_INSIGHT.md         # ターゲット分析手法
│   └── #PLATFORM_ANALYSIS.md        # プラットフォーム分析
│
├── planning/                         # プランニングフェーズ用（priority: standard）
│   ├── #VISUAL_RHYTHM.md           # ビジュアルリズム
│   ├── #CTA_STRATEGY.md            # CTA戦略
│   └── #EXPERIENCE_ELEMENTS.md      # 体験要素の組み込み
│
└── output/                          # アウトプットフェーズ用（priority: optional）
    ├── #MATERIAL_LIST.md            # 素材リスト作成手法
    ├── #AI_PROFILE.md              # AI生成プロファイル
    └── #PLATFORM_OPTIMIZATION.md    # プラットフォーム最適化
```

### マーカーシステム仕様

#### マーカー命名規則

```
基本形式: #[カテゴリ]_[サブカテゴリ]_[詳細]

例:
#HOOK_METHODOLOGY           # 基本マーカー
#HOOK.EMOTIONAL            # 階層マーカー
#HOOK.EMOTIONAL.FEAR       # 詳細階層マーカー
```

#### マーカーの種類

1. **プライマリマーカー**（大分類）
   - `#RESEARCH` - リサーチ関連
   - `#PLANNING` - プランニング関連
   - `#OUTPUT` - アウトプット関連

2. **セカンダリマーカー**（中分類）
   - `#HOOK` - フック関連
   - `#STORY` - ストーリー関連
   - `#VISUAL` - ビジュアル関連
   - `#AUDIO` - 音声関連

3. **コンテキストマーカー**（状況別）
   - `#PRODUCT.[タイプ]` - 商材タイプ別
   - `#AUDIENCE.[属性]` - ターゲット属性別
   - `#PLATFORM.[名称]` - プラットフォーム別

### ファイルメタデータ形式（コンテキストエンジニアリング対応）

各モジュールファイルの冒頭に以下のメタデータを記載：

```yaml
---
marker: #HOOK_METHODOLOGY
prefix: "PLANNING_CONTEXT: フック作成方法論"
title: フック作成方法論
priority: core                    # core/standard/optional
cache_hint: stable               # stable/dynamic
category: planning
tags: [フック, 訴求, 心理効果, インパクト]
dependencies:
  required: [#AUDIENCE_INSIGHT]
  recommended: [#PLATFORM_ANALYSIS]
conversation_tracking:           # 会話内で追跡すべき項目
  - 選択したフックタイプ
  - 却下した理由
  - カスタマイズ内容
version: 1.0
last_updated: 2025-01-24
---
```

### 動的参照システム（会話内状態管理）

#### video-detailed.md での実装

```markdown
## 優先度ベースの参照戦略

### Phase別の参照順序
Phase 0（リサーチ）:
1. core: なし（リサーチは独立）
2. standard: #AUDIENCE_INSIGHT, #COMPETITOR_ANALYSIS
3. optional: #MARKET_RESEARCH

Phase 1（プランニング）:
1. core: #HOOK_METHODOLOGY, #STORY_PATTERN, #NARRATION_TONE
2. standard: #EXPERIENCE_ELEMENTS, #CTA_STRATEGY
3. optional: #VISUAL_RHYTHM

### 会話内での状態追跡例
━━━━━━━━━━━━━━━━━━━━━
🎬 動画制作プロジェクト状態
━━━━━━━━━━━━━━━━━━━━━
商材: 美容サプリ
ターゲット: 30代女性
現在Phase: 1（プランニング）

✅ 完了した決定:
- フックタイプ: 変化訴求型
- ターゲット分析: 完了

📍 現在参照中:
- #HOOK_METHODOLOGY（core）
- #NARRATION_TONE（core）

⏸️ 保留中の決定:
- ナレーションテイスト
━━━━━━━━━━━━━━━━━━━━━
```

---

## Claudeプロジェクト対応

### 会話内メモリによる動的管理

```markdown
# AIが会話内で管理する情報

## プロジェクト進行状態
- 現在のPhase
- 完了したタスク
- 保留中の決定
- 学習した制約（例：美容商品での薬機法）

## 参照履歴
- 使用したモジュール
- 効果的だったパターン
- 避けるべきパターン
```

### index.md の役割

```markdown
# 動画制作ナレッジベース

## 🚀 クイックアクセス（優先度: core）
最も頻繁に使用するモジュール：
- [#HOOK_METHODOLOGY](core/#HOOK_METHODOLOGY.md)
- [#STORY_PATTERN](core/#STORY_PATTERN.md)
- [#NARRATION_TONE](core/#NARRATION_TONE.md)

## 📊 Phase別ガイド
### Phase 0: リサーチ
推奨モジュール: [リスト]

### Phase 1: プランニング  
推奨モジュール: [リスト]
```

---

## 段階的実装計画

### Phase A: 基本モジュール化（実装時間: 8-10時間）

#### Week 1: コアモジュールの作成
1. **ディレクトリ構造の作成**
   - core/, research/, planning/, output/, archive/
   - index.md（優先度別管理）

2. **最重要3モジュールの作成**
   ```
   core/#HOOK_METHODOLOGY.md      # 2-3時間
   core/#STORY_PATTERN.md         # 2-3時間
   core/#NARRATION_TONE.md        # 2時間
   ```

3. **video-detailed.md の基本更新**
   - Phase別参照リストの追加
   - 基本的なマーカー参照

**成果物**: 
- 動作する最小構成
- トークン30%削減達成

### Phase B: コンテキストエンジニアリング適用（追加4時間）

#### Week 2: 最適化の実装
1. **メタデータの拡張**
   - prefix, priority, cache_hint の追加
   - conversation_tracking の定義

2. **index.md の最適化**
   - 優先度別の整理
   - クイックアクセスセクション

3. **パフォーマンス向上施策**
   - 安定プレフィックスの実装
   - キャッシュヒントの活用

**成果物**:
- トークン40%削減
- 応答速度20%向上

### Week 3-4: 段階的移行

#### 残りのモジュール作成
```
優先順位:
1. #AUDIENCE_INSIGHT.md（standard）
2. #COMPETITOR_ANALYSIS.md（standard）
3. #EXPERIENCE_ELEMENTS.md（standard）
4. #MATERIAL_LIST.md（optional）
5. その他順次
```

#### 旧ファイルのアーカイブ
- 動作確認後、archive/へ移動
- 段階的な切り替え

---

## 品質保証とパフォーマンス指標

### 品質チェックリスト

#### コンテキストエンジニアリング対応項目
- [ ] **プレフィックス**: 安定した固定文字列で開始
- [ ] **優先度**: core/standard/optionalが明確
- [ ] **キャッシュヒント**: stable/dynamicが適切
- [ ] **会話追跡項目**: 明確に定義されている

#### モジュール基本要件
- [ ] メタデータが完全（prefix含む）
- [ ] マーカーが一意で明確
- [ ] 200-300行以内
- [ ] 単一責任原則の遵守

### パフォーマンス指標

#### 目標値（Phase B完了時）
```yaml
performance_targets:
  token_reduction: 40%         # ベースライン比
  response_speed: +20%         # 応答速度向上
  kv_cache_hit_rate: 0.7+     # キャッシュヒット率
  module_access_time: <100ms   # モジュール参照時間
```

#### 測定方法
1. **トークン使用量**
   - 同一タスクでの比較測定
   - 各Phaseでのトークン数記録

2. **応答速度**
   - 初回応答までの時間
   - 全体処理時間

3. **キャッシュ効率**
   - プレフィックスの再利用率
   - 優先度別のアクセス頻度

### 実装例

#### コアモジュールのメタデータ例
```yaml
---
marker: #HOOK_METHODOLOGY
prefix: "PLANNING_CONTEXT: フック作成方法論 - 動画広告の最初の3-5秒で視聴者の注意を引くための体系的手法"
priority: core
cache_hint: stable
category: planning
tags: [フック, 訴求型, 心理効果, 3段階プロセス]
dependencies:
  required: []
  recommended: [#AUDIENCE_INSIGHT]
conversation_tracking:
  - 初期5パターンの作成状況
  - 選定した訴求型とその理由
  - バリエーション展開の結果
  - 最終的な文言選択
version: 2.0
last_updated: 2025-01-24
---

PLANNING_CONTEXT: フック作成方法論 - 動画広告の最初の3-5秒で視聴者の注意を引くための体系的手法

[以下、コンテンツが続く...]
```

### 移行完了基準

1. **Phase A完了**
   - コア3モジュール稼働
   - トークン30%削減確認
   - 基本動作テスト合格

2. **Phase B完了**
   - 全メタデータ最適化
   - トークン40%削減達成
   - KVキャッシュ効率確認

---

## 実装優先順位まとめ

### 即時実装（Week 1）
1. **コアディレクトリ作成**
2. **3つのコアモジュール**
   - #HOOK_METHODOLOGY
   - #STORY_PATTERN
   - #NARRATION_TONE
3. **index.md（優先度管理）**

### 短期実装（Week 2）
1. **コンテキストエンジニアリング適用**
   - メタデータ拡張
   - プレフィックス最適化
2. **パフォーマンス測定**

### 中期実装（Week 3-4）
1. **残りのモジュール移行**
2. **旧ファイルアーカイブ**
3. **CLAUDE.md更新**

## 更新履歴

- 2025-01-24: 初版作成
- 2025-01-24: v2.0 - 軽量コンテキストエンジニアリング版に更新