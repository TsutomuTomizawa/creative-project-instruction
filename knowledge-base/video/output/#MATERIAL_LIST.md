---
marker: #MATERIAL_LIST
prefix: "OUTPUT_CONTEXT: 素材リスト（AI生成プロファイル統合版） - 動画制作に必要な全素材の体系的整理とAI生成情報"
title: 素材リスト・AI生成プロファイル統合ガイド
priority: standard
cache_hint: dynamic
category: output
tags: [素材管理, 制作準備, バリエーション, 効率化]
dependencies:
  required: [#STORY_PATTERN]
  recommended: [#VISUAL_RHYTHM, #EXPERIENCE_ELEMENTS, #AI_PROFILE]
conversation_tracking:
  - 作成した素材リスト
  - バリエーション対応
  - 優先度設定
version: 1.0
last_updated: 2025-01-24
---

# OUTPUT_CONTEXT: 素材リスト（AI生成プロファイル統合版） - 動画制作に必要な全素材の体系的整理とAI生成情報

## 概要
動画広告制作に必要な全ての視覚的要素を整理し、各素材に対するAI生成プロファイル（JSON）とプロンプトを統合して管理する包括的なガイドです。これにより、素材準備からAI生成まで一貫した制作フローを実現します。

## 素材の分類体系

### 1. メイン素材
**人物素材**:
- 登場人物（演者、モデル）
- ナレーター（顔出しの場合）
- エキストラ、背景人物

**商品・サービス素材**:
- 製品の実物
- サービスのUI/画面
- パッケージ、ロゴ

**ロケーション・背景**:
- 撮影場所
- 背景画像/動画
- 環境設定用小道具

### 2. サポート素材
**UI要素**:
- ボタン、アイコン
- フォーム、入力画面
- ナビゲーション要素

**グラフィック素材**:
- グラフ、チャート
- 図表、インフォグラフィック
- 数値表示、統計データ

**テキストオーバーレイ**:
- キャプション
- 見出し、タイトル
- 注釈、補足情報

### 3. 演出素材
**トランジション効果**:
- シーン転換エフェクト
- ワイプ、フェード
- モーション連結

**視覚効果**:
- パーティクル
- 光エフェクト
- モーショングラフィックス

**ブランド要素**:
- ロゴアニメーション
- ブランドカラー素材
- コーポレートエレメント

## シーン別素材リストフォーマット（AI生成プロファイル統合版）

### 基本テンプレート
```markdown
## シーン[番号]（[時間]）：[シーンタイトル]

### シーン概要
[このシーンの目的と伝えたいメッセージ]

### ナレーション原稿
[倍速対応のナレーションテキスト]

### 必要素材リスト

#### 素材1：[素材名]
##### 素材詳細
- タイプ：[映像/画像/UI/グラフィック等]
- 用途：[具体的な使用シーン]
- 仕様：[9:16（1080x1920）、尺、MP4フォーマット]
- 優先度：[必須/推奨/オプション]
- 準備状況：[未着手/準備中/完了]

##### AI生成情報
- JSONプロファイル形式：→ #AI_PROFILEの「JSON Context Profileの基本構造」参照
- 必要な要素：shot, subject, scene, visual_details
- AI生成プロンプト：[具体的なプロンプト文]

#### 素材2：[素材名]
[以下同様の構造で記載]

### 素材間の関係性
- [素材同士の配置関係]
- [タイミングの関係]
- [視覚的な繋がり]
```

### 実装例（英語プロンプト）

```markdown
## シーン1（0-5秒）：問題提起シーン

### シーン概要
視聴者の共感を得るため、日常的な業務の悩みを視覚化

### ナレーション原稿
"Still managing customers with Excel? It's time for a change."

### 必要素材リスト

#### 素材1：疲れたビジネスパーソン
##### 素材詳細
- タイプ：映像
- 用途：メインビジュアル
- 仕様：4K、5秒、MP4
- 優先度：必須
- 準備状況：未着手

##### AI生成情報
- JSONプロファイル形式：→ #AI_PROFILEの「JSON Context Profileの基本構造」参照
- 必要な要素：shot, subject, scene, visual_details
- AI生成プロンプト：
  **Stable Diffusion/Midjourney**: "Professional photograph of exhausted Japanese businessman in late 30s at messy office desk at night, tired expression, navy suit with loosened tie, pile of documents, sticky notes on monitor, multiple empty coffee cups, desk lamp lighting, blue-tinted atmosphere, documentary style photography, medium shot from chest up, shallow depth of field f/2.8, 50mm lens, cinematic lighting, muted colors, vignette effect, high quality commercial photography, 4K resolution"
  
  **Motion Generation (RunwayML/Pika Labs)**: "Static medium shot slowly zooming in 10% over 5 seconds. Subject: tired Japanese businessman sighs deeply, holds his head in hands, then looks up at computer screen with resignation. Subtle movements: mouse hand moving frantically, papers being flipped. Background: empty office at night. Camera: smooth, slow zoom on 50mm lens. Lighting: desk lamp and monitor glow creating blue-tinted atmosphere"

#### 素材2：エラー画面のモニター
##### 素材詳細
- タイプ：UI画像
- 用途：問題の視覚化
- 仕様：1920x1080、PNG
- 優先度：必須
- 準備状況：未着手

##### AI生成情報
- AI生成プロンプト：
  **UI Design**: "Excel spreadsheet with error messages, red warning dialogs, messy data cells, frozen screen interface, multiple error popups, corporate data management interface gone wrong, realistic Excel UI, Windows environment, frustrating user experience visualization"
```

### 活用例の参照先
具体的な実装例については、以下を参照してください：
- シーン別の詳細なプロファイル例：→ #AI_PROFILEの「シーン別プロファイル例」
- バリエーション管理の実例：→ #AI_PROFILEの「バリエーション管理」

## バリエーション管理システム

### フックバリエーション対応

#### バリエーション管理構造
```
### 共通素材（全パターン共通：3秒以降）
├── シーン2_問題深掘り/
│   ├── 共通背景素材/
│   └── 共通グラフィック/
├── シーン3_解決策提示/
│   ├── 製品デモ素材/
│   └── UI素材/
├── シーン4_実績証明/
│   └── データビジュアル/
└── シーン5_CTA/
    └── CTAボタン素材/

### バリエーション固有素材（0-3秒のフック部分のみ）
├── パターンA_質問型/
│   ├── 疑問表情の人物
│   └── クエスチョンマーク
├── パターンB_恐怖訴求型/
│   ├── 不安表情の人物
│   └── 警告アイコン
└── パターンC_限定性型/
    ├── カウントダウンタイマー
    └── 限定バッジ
```


### バリエーション差分管理表
| フックパターン | 固有素材 | 共通素材との差分 | 追加制作コスト |
|--------------|---------|----------------|--------------|
| 質問型 | 疑問表情、？マーク | 表情のみ変更 | 低 |
| 恐怖訴求型 | 不安表情、警告UI | 表情＋追加グラフィック | 中 |
| 限定性型 | タイマー、バッジ | 新規グラフィック制作 | 中 |

## 素材準備チェックリスト

### 制作前確認
**権利関係**:
- [ ] 人物の肖像権クリア
- [ ] 音楽・効果音の使用許諾
- [ ] ブランドガイドライン確認
- [ ] 素材の二次利用可否

**技術仕様**:
- [ ] 必要解像度の確認
- [ ] カラープロファイル統一
- [ ] ファイル形式の適合性
- [ ] 容量制限への対応

**バックアップ素材**:
- [ ] 代替人物の準備
- [ ] 予備背景の用意
- [ ] 差し替え可能なグラフィック

### 素材収集方法

**自社制作**:
```
メリット：
- 完全なコントロール
- 著作権の明確性
- ブランド統一性

必要リソース：
- 撮影機材/スタジオ
- モデル/演者
- 制作スタッフ
```

**ストック素材活用**:
```
推奨サービス：
- Getty Images（高品質）
- Shutterstock（豊富な選択肢）
- Pexels/Unsplash（無料）

選定基準：
- ライセンス条件
- 解像度/品質
- ブランドとの適合性
```

**AI生成素材**:
```
活用シーン：
- 背景画像生成
- グラフィック要素
- モックアップ作成

注意点：
- 商用利用可否確認
- ブランド一貫性
- 倫理的配慮
```

## 効率化のためのテンプレート

### 素材命名規則
```
[シーン番号]_[素材タイプ]_[内容]_[バリエーション].[拡張子]

例：
01_person_confused_businessman_v1.mp4
01_bg_messy_office_dark.jpg
01_graphic_question_mark_animated.mp4
```

### フォルダ構造
```
project_name/
├── 00_common/          # 全バリエーション共通
│   ├── logo/
│   ├── music/
│   └── graphics/
├── 01_raw_footage/     # 撮影素材
│   ├── person/
│   ├── product/
│   └── background/
├── 02_graphics/        # 制作グラフィック
│   ├── animation/
│   ├── static/
│   └── ui_elements/
├── 03_variations/      # バリエーション別
│   ├── hook_a_question/
│   ├── hook_b_fear/
│   └── hook_c_limited/
└── 04_final_output/    # 完成素材
```

## プラットフォーム別考慮事項

### TikTok/Instagram Reels/YouTube Shorts（9:16縦型主体）
```
必須対応：
- 高解像度素材（4K推奨）
- 横長レイアウト最適化
- エンドスクリーン用スペース確保

推奨対応：
- チャプター区切り考慮
- サムネイル用静止画
- 字幕ファイル準備
```

```
必須対応：
- 9:16縦型（1080x1920）デフォルト
- 60秒ストーリー構成を基準
- モバイルファーストな画面設計
- テキストサイズは大きめ（視認性重視）
- 縦位置での撮影/フレーミング

推奨事項：
- 上下20%は操作エリアとしてセーフゾーン
- TikTok: ループ可能な終わり方
- Instagram: 保存促進要素
- Shorts: サムネイルのインパクト
```

### YouTube（従来型16:9）
```
必須対応：
- 高解像度素材（4K推奨）
- 横長レイアウト最適化
- エンドスクリーン用スペース確保

推奨対応：
- チャプター区切り考慮
- サムネイル用静止画
- 字幕ファイル準備
```

### ナレーション原稿管理

#### 倍速ナレーション対応
```
文字数ガイドライン（1.2-1.5倍速基準）:
- 60秒動画（推奨）: 240-360文字
- 30秒動画: 120-180文字
- 15秒動画: 60-90文字

原稿作成時のポイント:
- 明瞭な発音を意識した文章構成
- 重要キーワードの繰り返し
- 間（ま）の指定箇所を明記
- トーンに応じた話速調整
```

### マルチプラットフォーム対応
```
セーフゾーン設定：
- 中央80%に重要要素配置
- 端15%は装飾のみ
- テキストは中央60%内

アスペクト比変換：
- 9:16（マスター）→ 1:1：上下を適切にトリミング
- 9:16（マスター）→ 16:9：左右に背景追加またはブラー
- 素材は9:16縦型を基準に最大サイズで準備
```

## トラブルシューティング

### よくある問題と対策

**素材不足**:
```
問題：撮影後に素材不足が判明
対策：
1. ストック素材で代替
2. グラフィックで補完
3. 編集でカバー（ズーム、スロー等）
```

**品質不統一**:
```
問題：素材間の品質差
対策：
1. カラーグレーディング統一
2. 解像度の標準化
3. ライティング調整
```

**権利問題**:
```
問題：使用許諾の不備
対策：
1. 事前の権利確認徹底
2. 代替素材の準備
3. 制作契約書の整備
```

## チェックリスト

### 素材リスト作成時
- [ ] 全シーンの素材を網羅
- [ ] 優先度の明確化
- [ ] バリエーション対応の考慮
- [ ] 技術仕様の記載

### 素材収集時
- [ ] 権利関係のクリア
- [ ] 品質基準の統一
- [ ] バックアップの準備
- [ ] 命名規則の遵守

### 納品前確認
- [ ] 全素材の揃い確認
- [ ] ファイル形式の適合性
- [ ] 解像度/品質チェック
- [ ] ドキュメント完備

## まとめ
効率的な素材リスト管理は、スムーズな動画制作の基盤となります。各素材に対するAI生成プロファイル（JSON）とプロンプトを統合管理することで、素材準備からAI生成まで一貫した制作フローを実現します。倍速ナレーションに対応した原稿管理と、バリエーション展開を見据えた体系的な整理により、情報密度の高い動画広告を制作コストを抑えながら実現できます。

### AI生成プロファイルとの統合メリット
- 素材とその生成情報を一元管理
- 再現性の高い素材制作
- バリエーション展開の効率化
- 品質の一貫性確保