# 動画広告素材リスト＆AI生成プロファイルガイド

このファイルは、動画広告に必要な素材リストの作成方法と、AI素材生成用JSON Context Profileの詳細な作成ガイドです。

## 目次
1. [素材リスト作成の基本](#素材リスト作成の基本)
2. [シーンごとの素材整理方法](#シーンごとの素材整理方法)
3. [AI素材生成用JSON Context Profile](#ai素材生成用json-context-profile)
4. [素材タイプ別プロファイルテンプレート](#素材タイプ別プロファイルテンプレート)
5. [バリエーション管理](#バリエーション管理)
6. [プラットフォーム別最適化](#プラットフォーム別最適化)
7. [品質管理チェックリスト](#品質管理チェックリスト)

---

## 素材リスト作成の基本

### 素材リストの目的

素材リストは、動画制作に必要な全ての視覚的要素を整理し、効率的な制作を可能にします。

### 素材の分類

1. **メイン素材**
   - 人物（登場人物、ナレーター）
   - 商品・サービスのビジュアル
   - ロケーション・背景

2. **サポート素材**
   - UI要素（ボタン、アイコン）
   - グラフィック（グラフ、図表）
   - テキストオーバーレイ

3. **演出素材**
   - トランジション効果
   - パーティクル、エフェクト
   - モーショングラフィックス

---

## シーンごとの素材整理方法

### 素材リストフォーマット

```markdown
## シーン1（0-5秒）：[シーンタイトル]

### シーン概要
[このシーンで伝えたいメッセージと役割]

### 必要素材リスト
| No. | 素材名 | 素材タイプ | 用途 | 優先度 |
|-----|--------|-----------|------|--------|
| 1 | 困っているビジネスパーソン | 人物 | メインビジュアル | 必須 |
| 2 | 散らかったデスク | 背景 | 状況説明 | 必須 |
| 3 | エラー表示のPC画面 | UI | 問題の可視化 | 推奨 |
| 4 | 時計のグラフィック | アニメーション | 時間の無駄を表現 | オプション |

### 素材間の関係性
- 素材1と2は同一フレームに配置
- 素材3は素材1の視線の先に配置
- 素材4はオーバーレイとして使用
```

### バリエーション対応の記載

```markdown
### フックバリエーション別の差分

#### パターンA（質問型）の場合
- 素材1の表情：困惑よりも疑問を強調
- 追加素材：「？」マークのグラフィック

#### パターンB（恐怖訴求型）の場合
- 素材1の表情：より深刻な不安を表現
- 素材2：より混沌とした状態を強調
- 追加素材：警告マークやアラート表示
```

---

## AI素材生成用JSON Context Profile

### JSON Context Profileの基本構造

AI素材生成用のJSON Context Profileは、各素材の詳細なビジュアル指示をAI生成ツールが理解できる形式で記述します。

#### 完全な構造テンプレート

```json
{
  "shot": {
    "composition": "ショット構成（例：クローズアップ、ワイドショット）",
    "camera_motion": "カメラの動き（例：静止、パン、ズーム）",
    "frame_rate": "フレームレート（例：24fps、30fps、60fps）",
    "lens": "レンズ情報（例：35mm、50mm、85mm）",
    "depth_of_field": "被写界深度（例：浅い、深い、f値）",
    "film_grain": "フィルムグレイン値（0-1の範囲）"
  },
  "subject": {
    "entities": [
      {
        "role": "被写体の役割",
        "appearance": "外見の詳細な記述",
        "position": "画面内の位置",
        "movement": "動きやアクション",
        "expression": "表情や感情（人物の場合）",
        "clothing": "服装（人物の場合）"
      }
    ]
  },
  "scene": {
    "location": "撮影場所",
    "time_of_day": "時間帯",
    "weather": "天候（屋外の場合）",
    "lighting": "照明設定",
    "environment_details": "環境の詳細"
  },
  "visual_details": {
    "primary_action": "主要なアクション",
    "secondary_action": "副次的なアクション",
    "duration": "シーンの長さ",
    "resolution": "解像度（例：4K、1080p）",
    "aspect_ratio": "アスペクト比（例：16:9、9:16、1:1）"
  },
  "cinematography": {
    "lighting": "照明の詳細設定",
    "color_grading": "カラーグレーディング",
    "style": "撮影スタイル",
    "tone": "トーンやムード",
    "visual_effects": "視覚効果（必要な場合）"
  },
  "audio": {
    "narration": "ナレーション内容",
    "voice_tone": "声のトーン",
    "voice_style": "ナレーションテイスト（プロフェッショナル/フレンドリー/エネルギッシュ/エモーショナル/ニュートラル）",
    "ambience": "環境音",
    "sound_design": ["効果音のリスト"],
    "music": "BGMの説明"
  },
  "experience_elements": [
    "使用した体験要素のリスト（例：個人的な悩み、使用前の失敗談、使用後の喜び等）"
  ],
  "color_palette": {
    "primary_colors": ["主要な色"],
    "secondary_colors": ["補助的な色"],
    "mood": "色彩が生み出す雰囲気"
  },
  "visual_rules": {
    "prohibited_elements": ["禁止要素のリスト"],
    "required_elements": ["必須要素のリスト"],
    "brand_guidelines": "ブランドガイドライン準拠事項"
  }
}
```

---

## 素材タイプ別プロファイルテンプレート

### 1. 人物素材（問題提起シーン）

```json
{
  "shot": {
    "composition": "ミディアムショット - 人物の胸から上",
    "camera_motion": "ゆっくりとしたズームイン",
    "frame_rate": "24fps",
    "lens": "50mm",
    "depth_of_field": "背景をぼかす（f/2.8）",
    "film_grain": 0.03
  },
  "subject": {
    "entities": [
      {
        "role": "困っているビジネスパーソン",
        "appearance": "30代、疲れた表情、やや乱れた髪",
        "position": "画面中央",
        "movement": "ため息をつく、頭を抱える",
        "expression": "困惑、ストレス",
        "clothing": "ビジネスカジュアル、ネクタイを緩めた状態"
      }
    ]
  },
  "scene": {
    "location": "オフィスのデスク",
    "time_of_day": "夜遅く（21:00頃）",
    "lighting": "デスクライトと画面の光、全体的に薄暗い",
    "environment_details": "散らかった書類、複数のコーヒーカップ"
  },
  "visual_details": {
    "primary_action": "画面を見て頭を抱える",
    "secondary_action": "マウスを焦って動かす",
    "duration": "3s",
    "resolution": "4K",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "低コントラスト、青みがかった照明",
    "color_grading": "寒色系、彩度低め",
    "style": "ドキュメンタリー風",
    "tone": "重苦しい、ストレスフル"
  },
  "audio": {
    "narration": "まだ手作業で管理していませんか？",
    "voice_tone": "共感的、やや低めの声",
    "voice_style": "フレンドリー",
    "ambience": "静かなオフィス、時計の音",
    "sound_design": ["ため息", "キーボードのタイピング音"],
    "music": "不安を感じさせる低音"
  },
  "experience_elements": [
    "個人的な悩み"
  ]
}
```

### 2. 製品デモ素材（解決策提示シーン）

```json
{
  "shot": {
    "composition": "製品デモ画面のクローズアップ",
    "camera_motion": "スムーズなパン、UI要素を順番に見せる",
    "frame_rate": "30fps",
    "lens": "35mm相当",
    "depth_of_field": "全体にフォーカス",
    "film_grain": 0.01
  },
  "subject": {
    "entities": [
      {
        "role": "製品インターフェース",
        "appearance": "モダンでクリーンなUI、直感的なデザイン",
        "visual_state": "スムーズなアニメーション、レスポンシブ",
        "key_features": "ダッシュボード、自動化ボタン、分析グラフ"
      },
      {
        "role": "操作する手",
        "appearance": "きれいな手、自信を持った動き",
        "movement": "効率的にクリック、スワイプ"
      }
    ]
  },
  "scene": {
    "location": "明るいモダンオフィス",
    "time_of_day": "昼間",
    "lighting": "自然光、明るく開放的",
    "environment_details": "整理整頓されたデスク、観葉植物"
  },
  "visual_details": {
    "primary_action": "製品の主要機能のデモンストレーション",
    "secondary_action": "データの自動更新アニメーション",
    "duration": "8s",
    "resolution": "4K",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "明るく均一な照明",
    "color_grading": "暖色系、高彩度",
    "style": "クリーンでプロフェッショナル",
    "tone": "希望に満ちた、効率的"
  },
  "audio": {
    "narration": "AIが自動で分析し、最適な提案を",
    "voice_tone": "明るく自信に満ちた声",
    "ambience": "活気のあるオフィス環境",
    "sound_design": ["クリック音", "通知音（ポジティブ）"],
    "music": "アップビートで前向きなBGM"
  }
}
```

### 3. 分割画面素材（ビフォーアフター比較）

```json
{
  "shot": {
    "composition": "分割画面 - 左にビフォー、右にアフター",
    "camera_motion": "静止、中央のワイプで切り替え",
    "frame_rate": "24fps",
    "lens": "35mm",
    "depth_of_field": "両側均等にシャープ",
    "film_grain": 0.02
  },
  "subject": {
    "entities": [
      {
        "role": "ビフォー側の人物",
        "screen_side": "左",
        "appearance": "疲れた表情、散らかったデスク",
        "expression": "ストレス、疲労",
        "environment": "書類の山、複数のモニター"
      },
      {
        "role": "アフター側の人物",
        "screen_side": "右",
        "appearance": "同じ人物、リラックスした表情",
        "expression": "満足、余裕",
        "environment": "整理されたデスク、単一のモニター"
      }
    ]
  },
  "scene": {
    "location": "同じオフィスの異なる状態",
    "time_of_day": "左：夜、右：昼",
    "lighting": "左：薄暗い、右：明るい自然光",
    "environment_details": "対照的な職場環境"
  },
  "visual_details": {
    "primary_action": "中央からワイプで切り替わる",
    "transition": "垂直ワイプ、3秒かけて",
    "duration": "5s",
    "resolution": "4K",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "コントラストを強調",
    "color_grading": "左：寒色系、右：暖色系",
    "style": "比較広告の定番スタイル",
    "tone": "劇的な変化を強調"
  }
}
```

### 4. グラフィック素材（実績・信頼性表現）

```json
{
  "shot": {
    "composition": "アニメーショングラフィックス",
    "camera_motion": "静止（アニメーション内で動き）",
    "frame_rate": "30fps",
    "lens": "該当なし（グラフィックス）",
    "depth_of_field": "該当なし",
    "film_grain": 0
  },
  "subject": {
    "entities": [
      {
        "role": "統計データビジュアライゼーション",
        "appearance": "モダンなインフォグラフィック",
        "animation": "数値のカウントアップ、グラフの成長",
        "key_metrics": "導入企業数、満足度、ROI"
      },
      {
        "role": "企業ロゴ群",
        "appearance": "有名企業のロゴが順番に表示",
        "arrangement": "グリッド状またはカルーセル"
      }
    ]
  },
  "visual_details": {
    "primary_action": "数値のアニメーション表示",
    "secondary_action": "ロゴのフェードイン",
    "duration": "4s",
    "resolution": "4K",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "style": "モーショングラフィックス",
    "color_scheme": "ブランドカラーを基調",
    "animation_style": "スムーズでプロフェッショナル"
  },
  "audio": {
    "narration": "大手500社が導入、満足度98%",
    "voice_tone": "権威的、信頼感のある声",
    "sound_design": ["カウンター音", "達成音"],
    "music": "信頼感を演出するオーケストラ調"
  }
}
```

### 5. CTA素材（行動喚起）

```json
{
  "shot": {
    "composition": "CTAボタンを中心とした構成",
    "camera_motion": "微細なズームイン",
    "frame_rate": "30fps",
    "lens": "50mm相当",
    "depth_of_field": "CTAにフォーカス、周辺をぼかす",
    "film_grain": 0.01
  },
  "subject": {
    "entities": [
      {
        "role": "CTAボタン",
        "appearance": "大きく目立つボタン、ブランドカラー",
        "animation": "パルスエフェクト、ホバー効果",
        "text": "今すぐ無料で始める"
      },
      {
        "role": "補足情報",
        "appearance": "クレジットカード不要、即日利用可能",
        "position": "CTAボタンの下"
      }
    ]
  },
  "visual_details": {
    "primary_action": "ボタンのパルスアニメーション",
    "secondary_action": "背景に成功イメージをぼかして表示",
    "duration": "3s",
    "resolution": "4K",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "CTAを強調する照明",
    "color_grading": "高コントラスト、CTAが際立つ",
    "style": "コンバージョン重視のデザイン"
  },
  "audio": {
    "narration": "今すぐ14日間無料でお試しください",
    "voice_tone": "親しみやすく、行動を促す",
    "sound_design": ["クリック音", "成功音"],
    "music": "希望に満ちたエンディング"
  }
}
```

---

## バリエーション管理

### フックバリエーションの素材管理

#### 共通素材とバリエーション固有素材の分離

```markdown
## 素材管理構造

### 共通素材（3秒以降の全シーン）
├── シーン2_問題深掘り/
├── シーン3_解決策提示/
├── シーン4_実績証明/
└── シーン5_CTA/

### バリエーション固有素材（0-3秒のフック部分）
├── パターンA_質問型/
├── パターンB_恐怖訴求型/
├── パターンC_限定性型/
├── パターンD_驚愕型/
└── パターンE_権威型/
```

#### バリエーション差分のJSON管理

```json
{
  "variation_management": {
    "pattern_A": {
      "hook_type": "質問型",
      "unique_elements": {
        "narration": "エクセル管理で毎月20時間も無駄にしていませんか？",
        "visual_adjustments": {
          "expression": "疑問を持つ表情",
          "additional_graphics": "クエスチョンマーク"
        },
        "audio_adjustments": {
          "tone": "問いかけ調",
          "bgm": "疑問を抱かせるBGM"
        }
      }
    },
    "pattern_B": {
      "hook_type": "恐怖訴求型",
      "unique_elements": {
        "narration": "来月の決算で顧客データの不備が露呈する前に",
        "visual_adjustments": {
          "expression": "不安を感じる表情",
          "additional_graphics": "警告アイコン",
          "color_grading": "より暗めのトーン"
        },
        "audio_adjustments": {
          "tone": "切迫感を持たせる",
          "bgm": "緊張感のあるBGM",
          "sound_effects": ["アラート音"]
        }
      }
    }
  }
}
```

### 効率的なバリエーション制作フロー

1. **ベース素材の作成**
   - まず共通部分（3秒以降）の素材を完成
   - これらは全バリエーションで再利用

2. **フック素材のバリエーション展開**
   - 各パターンの差分のみを制作
   - ナレーションに合わせた微調整

3. **ファイル命名規則**
   ```
   hook_patternA_question.json
   hook_patternB_fear.json
   hook_patternC_limited.json
   hook_patternD_surprise.json
   hook_patternE_authority.json
   ```

---

## プラットフォーム別最適化

### YouTube向け最適化

```json
{
  "platform_requirements": {
    "aspect_ratio": "16:9",
    "resolution": "1920x1080 (Full HD) 以上",
    "duration": "15/30/60秒",
    "file_format": "MP4 (H.264)"
  },
  "content_optimization": {
    "first_5_seconds": "スキップされないフック",
    "audio_dependency": "音声あり前提",
    "caption_style": "補助的使用"
  },
  "visual_adjustments": {
    "safe_area": "中央80%に重要情報を配置",
    "text_size": "モバイル視聴を考慮",
    "cta_placement": "右下にCTAボタン"
  }
}
```

### Instagram/Facebook向け最適化

```json
{
  "platform_requirements": {
    "aspect_ratio": "1:1 または 4:5",
    "resolution": "1080x1080 または 1080x1350",
    "duration": "15/30秒推奨",
    "file_format": "MP4 または MOV"
  },
  "content_optimization": {
    "sound_off_default": "85%が無音視聴",
    "caption_essential": "必須、大きめの文字",
    "thumb_stopping": "最初の1秒で注目"
  },
  "visual_adjustments": {
    "text_overlay_limit": "画面の20%以内",
    "vertical_optimization": "スマホ縦持ち前提",
    "brand_visibility": "早い段階でロゴ表示"
  }
}
```

### TikTok向け最適化

```json
{
  "platform_requirements": {
    "aspect_ratio": "9:16 (縦型必須)",
    "resolution": "1080x1920",
    "duration": "15/30秒",
    "file_format": "MP4"
  },
  "content_optimization": {
    "native_feel": "UGC風の自然な演出",
    "trend_integration": "トレンド要素の組み込み",
    "fast_paced": "1-2秒ごとのカット切り替え"
  },
  "visual_adjustments": {
    "full_screen_usage": "画面全体を活用",
    "dynamic_text": "動きのあるテキスト",
    "music_sync": "BGMとの完全同期"
  }
}
```

---

### プロンプト最適化ガイド

#### 効果的な記述のポイント

##### 1. 具体性を重視
```json
// 良い例
"appearance": "32歳の日本人女性、身長160cm、ショートボブの黒髪、ネイビーのスーツ、疲れた表情"

// 悪い例
"appearance": "ビジネスウーマン"
```

##### 2. 感情と動きを明確に
```json
// 良い例
"movement": "最初は困惑した表情で画面を見つめ、3秒後に眉間にしわを寄せ、5秒後にため息をつきながら椅子にもたれかかる"

// 悪い例
"movement": "困っている様子"
```

##### 3. 技術仕様は正確に
```json
// 良い例
"camera_motion": "2秒かけて100%から120%へスムーズにズームイン、最後の0.5秒でイーズアウト"

// 悪い例
"camera_motion": "ズームする"
```

#### 禁止事項の明記

```json
"visual_rules": {
  "prohibited_elements": [
    "実在の個人の顔",
    "著作権のあるロゴ（許可なし）",
    "暴力的・攻撃的な表現",
    "医療行為の描写",
    "誤解を招く表現（例：'必ず痩せる'）"
  ],
  "required_compliance": [
    "薬機法準拠（ヘルスケア商品の場合）",
    "景品表示法準拠",
    "個人情報保護"
  ]
}
```



---

## 品質管理チェックリスト

### 素材作成前チェック
- [ ] 各シーンの必要素材リストが完成しているか
- [ ] フックパターン全て（A-E）のJSON Profileが作成されているか
- [ ] 共通素材とバリエーション固有素材が明確に分離されているか
- [ ] プラットフォーム別の調整が記載されているか
- [ ] 技術仕様（解像度、アスペクト比）が正しいか
- [ ] 禁止要素が明記されているか
- [ ] ファイル命名規則が統一されているか

### ナレーションテイスト関連チェック
- [ ] ナレーションテイストが明確に選定されているか
- [ ] voice_styleフィールドが全JSONに記載されているか
- [ ] 体験要素が適切に選択されているか
- [ ] experience_elementsが全JSONに記載されているか
- [ ] テイストと体験要素の整合性が取れているか

### 素材生成後チェック
- [ ] 全ての素材が仕様通りに生成されているか
- [ ] フックバリエーションの差分が正しく反映されているか
- [ ] ナレーションとビジュアルの同期が取れているか
- [ ] プラットフォーム別の要件を満たしているか
- [ ] 色調・トーンが一貫しているか
- [ ] 不適切な要素が生成されていないか
- [ ] A/Bテスト用のファイル構成が整っているか
- [ ] ナレーションテイストが一貫して表現されているか
- [ ] 体験要素が自然に組み込まれているか




---

## プロファイル管理のベストプラクティス

### 1. バージョン管理
- 各プロファイルに作成日時とバージョンを記載
- 変更履歴をコメントで残す
- 成功したプロファイルをテンプレート化

### 2. 再利用性の向上
- 共通要素を別ファイルで管理
- 業界別・目的別のプリセット作成
- カスタマイズ可能な変数を使用

### 3. フィードバックループ
- 生成結果の評価を記録
- うまくいかなかった要素を文書化
- 継続的な改善プロセスの確立

### 4. 素材生成ワークフロー
1. 素材リストの作成
2. JSONプロファイルの生成
3. AIツールでの素材生成
4. 品質チェック
5. 編集・合成