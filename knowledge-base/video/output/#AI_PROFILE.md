---
marker: #AI_PROFILE
prefix: "OUTPUT_CONTEXT: AI生成プロファイル - 素材生成用の詳細なJSON Context Profile"
title: AI生成プロファイル作成ガイド
priority: standard
cache_hint: dynamic
category: output
tags: [AI生成, JSON, プロファイル, 自動化]
dependencies:
  required: [#MATERIAL_LIST]
  recommended: [#NARRATION_TONE, #VISUAL_RHYTHM]
conversation_tracking:
  - 作成したプロファイル
  - 使用したAIツール
  - 生成パラメータ
version: 1.0
last_updated: 2025-01-24
---

# OUTPUT_CONTEXT: AI生成プロファイル - 素材生成用の詳細なJSON Context Profile

## 概要
AI素材生成ツールが理解し、高品質な素材を生成できるよう、詳細なコンテキスト情報を構造化したJSON形式で提供するガイドです。

## JSON Context Profileの基本構造

### 完全なテンプレート
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
    "voice_style": "ナレーションテイスト",
    "ambience": "環境音",
    "sound_design": ["効果音のリスト"],
    "music": "BGMの説明"
  },
  "experience_elements": [
    "使用した体験要素のリスト"
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

## シーン別プロファイル例

### 1. 問題提起シーン（0-5秒）
```json
{
  "shot": {
    "composition": "ミディアムショット - 人物の胸から上",
    "camera_motion": "ゆっくりとしたズームイン（5秒で10%）",
    "frame_rate": "24fps",
    "lens": "50mm",
    "depth_of_field": "f/2.8 - 背景を美しくぼかす",
    "film_grain": 0.03
  },
  "subject": {
    "entities": [
      {
        "role": "メイン人物 - 困っているビジネスパーソン",
        "appearance": "30代後半の日本人男性、疲れた表情、やや乱れた髪",
        "position": "画面中央、やや右寄り",
        "movement": "深いため息 → 頭を抱える → 画面を見つめる",
        "expression": "困惑から諦めへの変化",
        "clothing": "ネイビーのスーツ、ネクタイを緩めた状態、袖まくり"
      },
      {
        "role": "小道具 - 散らかったデスク",
        "appearance": "書類の山、付箋だらけのモニター、空のコーヒーカップ3個",
        "position": "前景から中景にかけて配置"
      }
    ]
  },
  "scene": {
    "location": "中規模企業のオフィス、個人デスク",
    "time_of_day": "夜遅く - 21:00頃",
    "lighting": "デスクライトとPCモニターの光、天井照明は消灯",
    "environment_details": "他のデスクは無人、窓の外は夜景"
  },
  "visual_details": {
    "primary_action": "エクセルのエラーを見て頭を抱える",
    "secondary_action": "マウスを焦って動かす、書類をめくる",
    "duration": "5秒",
    "resolution": "4K (3840x2160)",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "低コントラスト、青みがかった照明で疲労感を演出",
    "color_grading": "寒色系、彩度を20%落とす",
    "style": "ドキュメンタリー風のリアリズム",
    "tone": "重苦しい、ストレスフル",
    "visual_effects": "画面端に軽いビネット効果"
  },
  "audio": {
    "narration": "まだエクセルで顧客管理していませんか？",
    "voice_tone": "共感的、やや低めの声",
    "voice_style": "フレンドリー",
    "ambience": "静かなオフィス、時計の秒針、PCファンの音",
    "sound_design": ["深いため息", "キーボードの連打音", "マウスクリック"],
    "music": "不安を感じさせる低音のドローン"
  },
  "experience_elements": [
    "個人的な悩み",
    "共感できる日常的な苦労"
  ],
  "color_palette": {
    "primary_colors": ["#1a237e", "#37474f"],
    "secondary_colors": ["#cfd8dc", "#ffeb3b"],
    "mood": "疲労と閉塞感"
  },
  "visual_rules": {
    "prohibited_elements": ["笑顔", "明るい色", "整理整頓された環境"],
    "required_elements": ["エクセルのエラー表示", "時計", "疲労の視覚的表現"],
    "brand_guidelines": "ロゴは表示しない（問題提起フェーズのため）"
  }
}
```

### 2. 解決策提示シーン（15-23秒）
```json
{
  "shot": {
    "composition": "製品デモ画面のクローズアップ → 使用者を含むミディアムショット",
    "camera_motion": "スムーズな横パン、UI要素を順番に見せる",
    "frame_rate": "30fps - スムーズな動きを強調",
    "lens": "35mm相当",
    "depth_of_field": "f/5.6 - 画面全体をシャープに",
    "film_grain": 0.01
  },
  "subject": {
    "entities": [
      {
        "role": "製品インターフェース",
        "appearance": "モダンでクリーンなダッシュボード、青と白を基調",
        "visual_state": "データが自動更新されるアニメーション",
        "key_features": "AIアシスタント、自動化ボタン、リアルタイムグラフ",
        "interactions": "マウスホバーで詳細表示、クリックで即座に反応"
      },
      {
        "role": "操作する手",
        "appearance": "清潔でプロフェッショナルな手、腕時計着用",
        "movement": "自信を持った正確な動き、効率的なジェスチャー",
        "position": "画面右下から操作"
      }
    ]
  },
  "scene": {
    "location": "明るいモダンオフィス、整理されたデスク",
    "time_of_day": "昼間 - 自然光が入る",
    "lighting": "明るく均一な照明、影を最小限に",
    "environment_details": "観葉植物、整理された書類、コーヒー1杯"
  },
  "visual_details": {
    "primary_action": "3つの主要機能をデモンストレーション",
    "secondary_action": "バックグラウンドでのデータ自動処理",
    "duration": "8秒",
    "resolution": "4K (3840x2160)",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "明るく希望に満ちた照明",
    "color_grading": "暖色系、彩度を15%上げる",
    "style": "クリーンでプロフェッショナル",
    "tone": "効率的、革新的",
    "visual_effects": "UI要素のグロー効果、スムーズなトランジション"
  },
  "audio": {
    "narration": "AIが自動で分析し、最適な提案を瞬時に作成",
    "voice_tone": "明るく自信に満ちた声",
    "voice_style": "プロフェッショナル",
    "ambience": "活気のあるオフィス環境",
    "sound_design": ["クリック音", "通知音（成功）", "データ処理音"],
    "music": "アップビートで前向きなコーポレートBGM"
  },
  "experience_elements": [
    "使用中の実感",
    "驚きと発見"
  ],
  "color_palette": {
    "primary_colors": ["#2196f3", "#ffffff"],
    "secondary_colors": ["#4caf50", "#ffc107"],
    "mood": "清潔感と信頼性"
  }
}
```

### 3. 実績証明シーン（23-27秒）
```json
{
  "shot": {
    "composition": "アニメーショングラフィックス中心",
    "camera_motion": "静止カメラ、グラフィック内で動き",
    "frame_rate": "30fps",
    "lens": "該当なし（モーショングラフィックス）",
    "depth_of_field": "該当なし",
    "film_grain": 0
  },
  "subject": {
    "entities": [
      {
        "role": "統計データビジュアライゼーション",
        "appearance": "3Dグラフ、円グラフ、数値カウンター",
        "animation": "0から目標値までカウントアップ（2秒）",
        "key_metrics": "導入企業500社、満足度98%、ROI 300%"
      },
      {
        "role": "企業ロゴ群",
        "appearance": "Fortune 500企業のロゴ20社分",
        "arrangement": "六角形のハニカムパターンで配置",
        "animation": "順番にフェードイン、最後に全体が輝く"
      }
    ]
  },
  "visual_details": {
    "primary_action": "数値の段階的な表示とグラフの成長",
    "secondary_action": "背景でのパーティクル効果",
    "duration": "4秒",
    "resolution": "4K (3840x2160)",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "style": "ハイエンドモーショングラフィックス",
    "color_scheme": "ブランドカラーを基調、ゴールドのアクセント",
    "animation_style": "イージングを効かせたスムーズな動き"
  },
  "audio": {
    "narration": "大手500社が導入、驚異の満足度98%を達成",
    "voice_tone": "権威的で信頼感のある声",
    "voice_style": "プロフェッショナル",
    "sound_design": ["カウンター音", "達成音", "きらめき音"],
    "music": "オーケストラ調の壮大なBGM"
  }
}
```

## バリエーション管理

### フックバリエーション別プロファイル差分

#### パターンA（質問型）追加要素
```json
{
  "variation_specific": {
    "hook_type": "質問型",
    "adjustments": {
      "subject": {
        "expression": "疑問を持つ表情、眉をひそめる",
        "additional_graphics": "大きな？マークが頭上に出現"
      },
      "audio": {
        "narration_style": "問いかけるような上昇調",
        "voice_pace": "ややゆっくり、考えさせる間を作る"
      },
      "visual_effects": {
        "question_mark_animation": "回転しながらフェードイン"
      }
    }
  }
}
```

#### パターンB（恐怖訴求型）追加要素
```json
{
  "variation_specific": {
    "hook_type": "恐怖訴求型",
    "adjustments": {
      "scene": {
        "lighting": "より暗く、赤みを帯びた警告色",
        "additional_props": "壁に貼られた督促状、赤い警告表示"
      },
      "audio": {
        "narration_style": "切迫感のある早口",
        "additional_sounds": ["警告アラーム", "心拍音"]
      },
      "visual_effects": {
        "screen_glitch": "一瞬画面が乱れる演出",
        "red_flash": "危険を示す赤いフラッシュ"
      }
    }
  }
}
```

## AIツール別の最適化

### Stable Diffusion / Midjourney用
```json
{
  "prompt_optimization": {
    "style_tags": ["commercial photography", "professional lighting", "4K quality"],
    "negative_prompt": ["amateur", "blurry", "low quality", "watermark"],
    "model_specific": {
      "sampling_method": "DPM++ 2M Karras",
      "cfg_scale": 7.5,
      "steps": 30
    }
  }
}
```

### RunwayML / Pika Labs用
```json
{
  "motion_parameters": {
    "camera_movement": {
      "type": "orbit",
      "speed": 0.5,
      "direction": "clockwise"
    },
    "subject_animation": {
      "intensity": 0.7,
      "smoothness": 0.8
    }
  }
}
```

### ElevenLabs / Murf AI用（音声生成）
```json
{
  "voice_generation": {
    "voice_id": "professional_japanese_male_01",
    "prosody": {
      "pitch": 0,
      "speed": 1.1,
      "volume": 0.8
    },
    "emotion": {
      "concern": 0.7,
      "confidence": 0.3
    }
  }
}
```

## 品質管理パラメータ

### 一貫性確保
```json
{
  "consistency_rules": {
    "character_consistency": {
      "reference_image": "base_character_001.png",
      "key_features": ["年齢:35", "髪型:ショート", "服装:ビジネス"],
      "variation_tolerance": 0.1
    },
    "style_consistency": {
      "visual_style": "corporate_modern",
      "color_temperature": 6500,
      "contrast_ratio": 1.2
    }
  }
}
```

### エラーチェック
```json
{
  "quality_checks": {
    "technical": {
      "min_resolution": "1920x1080",
      "max_compression": 10,
      "color_space": "sRGB"
    },
    "content": {
      "brand_compliance": true,
      "inappropriate_content": false,
      "watermark_check": true
    }
  }
}
```

## 実装のベストプラクティス

### プロファイル管理
1. **バージョン管理**
   - 各プロファイルにバージョン番号付与
   - 変更履歴の記録
   - A/Bテスト用の派生バージョン

2. **モジュール化**
   - 共通要素の切り出し
   - シーン別プロファイルの独立管理
   - 再利用可能なコンポーネント化

3. **検証プロセス**
   - 生成前のプロファイルレビュー
   - 小規模テスト生成
   - フィードバックの反映

### 効率化Tips
```json
{
  "efficiency_tips": {
    "batch_processing": {
      "enabled": true,
      "parallel_jobs": 4,
      "priority_queue": ["hero_shots", "key_scenes", "supporting"]
    },
    "caching": {
      "reuse_similar": true,
      "variation_threshold": 0.2
    },
    "fallback_options": {
      "primary_fail": "use_similar_stock",
      "quality_fail": "regenerate_with_adjusted_params"
    }
  }
}
```

## チェックリスト

### プロファイル作成時
- [ ] 全必須フィールドの記入
- [ ] ブランドガイドライン準拠
- [ ] 技術仕様の明記
- [ ] バリエーション対応

### 生成実行時
- [ ] プロファイルの検証
- [ ] ツールの互換性確認
- [ ] 生成パラメータの最適化
- [ ] バックアッププラン準備

### 品質確認時
- [ ] 視覚的一貫性
- [ ] ブランド準拠
- [ ] 技術要件充足
- [ ] 著作権クリア

## まとめ
詳細なJSON Context Profileは、AI生成ツールの性能を最大限に引き出し、高品質で一貫性のある素材を効率的に生成する鍵となります。プロファイルの精度と完成度が、最終的な動画品質を大きく左右することを常に意識して作成してください。