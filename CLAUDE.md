# Creative Project Instruction - 依存関係管理ガイド

このファイルは、プロジェクト内のファイル間の依存関係と、変更時の必須チェック項目を定義します。
**重要: ファイルを編集する前に、必ずこのガイドを確認してください。**

## 🎯 プロジェクトの目的
このプロジェクトは、LP制作と動画広告制作のための構造化された知識ベースです。
各ファイルが特定の役割を持ち、相互に連携して効果的なクリエイティブ制作を支援します。

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
│   ├── lp/                            # LP制作ナレッジベース（モジュール型構造）
│   │   ├── 01-research.md             # リサーチフェーズ総合ガイド
│   │   ├── 02-module-selection.md     # モジュール選択ガイド（Phase 0.5）
│   │   ├── 03-story-modules.md        # ストーリーモジュール集
│   │   ├── 04-components.md           # コンポーネント仕様ガイド
│   │   ├── 05-copywriting.md          # コピーライティングガイド
│   │   └── 06-optimization.md         # 最適化Tips集（アーティファクト作成時参照）
│   └── video/                         # 動画制作ナレッジベース（モジュール化進行中）
│       ├── index.md                   # モジュール管理インデックス
│       ├── modularization-plan.md     # モジュール化計画書
│       ├── core/                      # コアモジュール（priority: core）
│       │   ├── #HOOK_METHODOLOGY.md   # フック3段階プロセス
│       │   ├── #STORY_PATTERN.md      # 14ストーリーパターン
│       │   └── #NARRATION_TONE.md     # 5トーン×8体験要素
│       ├── research/                  # リサーチモジュール（作成予定）
│       ├── planning/                  # プランニングモジュール（作成予定）
│       ├── output/                    # アウトプットモジュール（作成予定）
│       ├── archive/                   # 旧ファイル保管場所
│       ├── video-research.md          # リサーチフェーズ総合ガイド（レガシー）
│       ├── video-planning.md          # 動画制作総合ガイド（レガシー）
│       └── video-output.md            # 動画広告素材リスト＆AI生成プロファイルガイド（レガシー）
├── CLAUDE.md                          # 依存関係管理ガイド（このファイル）
└── README.md                          # プロジェクト全体説明
```

## 📊 ファイルの役割と使用タイミング

### Phase別の参照ファイル
- **Phase 0（リサーチ）**: 01-research.md（LP） / video-research.md（動画）
- **Phase 0.5（選択）**: 02-module-selection.md（LPのみ）
- **Phase 1（構成）**: 03-story-modules.md（LP） / video-planning.md（動画）
- **Phase 2（制作）**: 04-components.md（LP） / video-planning.md（動画）, 05-copywriting.md（LP）
- **アーティファクト作成時**: 06-optimization.md（LP） / video-output.md（動画・素材リスト＆AI生成Profile出力）

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

6. **動画ナレッジベースの特徴（モジュール化進行中）**
   - **モジュール型構造へ移行中**：
     - コアモジュール3つ完成（#HOOK_METHODOLOGY, #STORY_PATTERN, #NARRATION_TONE）
     - index.mdで優先度別アクセス管理
     - トークン40%削減、応答速度20%向上目標
   - **レガシー構造**（現在も参照可能）：
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

10. **モジュール化の進捗管理**
   - **完了**: coreモジュール3つ、index.md、video-detailed.md更新
   - **今後の予定**:
     - Week 2: research/フォルダのモジュール作成
     - Week 3: planning/フォルダのモジュール作成  
     - Week 4: output/フォルダのモジュール作成、旧ファイルアーカイブ

