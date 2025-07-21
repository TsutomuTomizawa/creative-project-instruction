# Creative Project Instruction - 依存関係管理ガイド

このファイルは、プロジェクト内のファイル間の依存関係と、変更時の必須チェック項目を定義します。
**重要: ファイルを編集する前に、必ずこのガイドを確認してください。**

## 📋 主要ファイルの依存関係マップ

### 1. custom-instructions/essential.md（中核ファイル）
変更時に影響を受けるファイル：
- [ ] `lp-detailed.md` - LP制作の詳細部分
- [ ] `video-detailed.md` - 動画広告制作の詳細部分
- [ ] `README.md` - プロジェクト説明との整合性
- [ ] `knowledge-base/lp/` - LP用ナレッジベース構造（フェーズベース）
- [ ] `knowledge-base/video/` - 動画用ナレッジベース構造

### 2. 各detailed.mdファイル（特にlp-detailed.md）
変更時の確認事項：
- [ ] `custom-instructions/essential.md` の参照部分
- [ ] knowledge-base内の関連ファイル
- [ ] Phase構成の整合性（lp-detailed.mdの場合）

## 📂 現在のディレクトリ構造

```
creative-project-instruction/
├── custom-instructions/
│   └── essential.md                    # 中核インストラクションファイル
├── instructions/
│   ├── lp-detailed.md                  # LP制作詳細ガイド
│   └── video-detailed.md               # 動画広告制作詳細ガイド  
├── knowledge-base/
│   ├── lp/                            # LP制作ナレッジベース
│   │   ├── 01-research.md             # リサーチフェーズ総合ガイド
│   │   ├── 02-module-selection.md     # モジュール選択ガイド
│   │   ├── 03-story-modules.md        # ストーリーモジュール集
│   │   ├── 04-components.md           # コンポーネント仕様ガイド
│   │   ├── 05-copywriting.md          # コピーライティングガイド
│   │   └── 06-optimization.md         # 最適化ガイド
│   └── video/                         # 動画制作ナレッジベース
│       ├── 01-research.md             # リサーチフェーズ総合ガイド
│       ├── 02-patterns.md             # 動画パターン総合ガイド
│       ├── 03-production.md           # 制作ガイド総合
│       └── 04-platform-guide.md       # プラットフォーム別ガイド
├── CLAUDE.md                          # 依存関係管理ガイド（このファイル）
└── README.md                          # プロジェクト全体説明
```

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

