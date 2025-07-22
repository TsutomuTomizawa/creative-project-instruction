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

### 2. 各detailed.mdファイル（特にlp-detailed.md）
変更時の確認事項：
- [ ] `custom-instructions/essential.md` の参照部分
- [ ] knowledge-base内の関連ファイル
- [ ] Phase構成の整合性（lp-detailed.md、video-detailed.mdの場合）

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
│   └── video/                         # 動画制作ナレッジベース（シンプル化構造）
│       ├── video-research.md          # リサーチフェーズ総合ガイド
│       ├── video-planning.md          # 動画制作総合ガイド（ナレーション中心、フック訴求型別バリエーション展開ガイド含む）
│       └── video-output.md            # 動画広告制作指示書ガイド（AI素材生成プロファイル含む）
├── CLAUDE.md                          # 依存関係管理ガイド（このファイル）
└── README.md                          # プロジェクト全体説明
```

## 📊 ファイルの役割と使用タイミング

### Phase別の参照ファイル
- **Phase 0（リサーチ）**: 01-research.md（LP） / video-research.md（動画）
- **Phase 0.5（選択）**: 02-module-selection.md（LPのみ）
- **Phase 1（構成）**: 03-story-modules.md（LP） / video-planning.md（動画）
- **Phase 2（制作）**: 04-components.md（LP） / video-planning.md（動画）, 05-copywriting.md（LP）
- **アーティファクト作成時**: 06-optimization.md（LP） / video-output.md（動画・制作指示書＆AI素材生成Profile出力）

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
   - 動画制作: Phase 0 → Phase 1（フック選定＋バリエーション展開） → Phase 2

6. **動画ナレッジベースの特徴**
   - 3つのファイルで完結する構造
   - video-planning.mdに制作ガイドとバリエーション展開ガイドを集約
   - video-output.mdで制作指示書作成を支援
   - Phase 1でフック選定後、同一訴求型での複数バリエーション作成に対応

