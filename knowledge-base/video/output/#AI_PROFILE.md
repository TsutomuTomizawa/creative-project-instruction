---
marker: #AI_PROFILE
prefix: "OUTPUT_CONTEXT: AI生成プロファイル参照ガイド - 素材生成用の詳細なJSON Context Profile仕様"
title: AI生成プロファイル参照ガイド
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
version: 1.1
last_updated: 2025-01-25
---

# OUTPUT_CONTEXT: AI生成プロファイル参照ガイド - 素材生成用の詳細なJSON Context Profile仕様

## 概要
AI素材生成ツールが理解し、高品質な素材を生成できるよう、詳細なコンテキスト情報を構造化したJSON形式で提供するための参照ガイドです。

**注意**: 実際の素材リスト作成時は、#MATERIAL_LISTモジュールを使用し、各素材の下にJSONプロファイルとAIプロンプトを配置してください。本モジュールは、JSONプロファイルの仕様と作成方法の参照用です。

## JSON Context Profileの基本構造

### 完全なテンプレート
```json
{
  "shot": {
    "composition": "shot composition (e.g., close-up, wide shot)",
    "camera_motion": "camera movement (e.g., static, pan, zoom)",
    "frame_rate": "frame rate (e.g., 24fps, 30fps, 60fps)",
    "lens": "lens information (e.g., 35mm, 50mm, 85mm)",
    "depth_of_field": "depth of field (e.g., shallow, deep, f-value)",
    "film_grain": "film grain value (0-1 range)"
  },
  "subject": {
    "entities": [
      {
        "role": "subject role",
        "appearance": "detailed appearance description",
        "position": "position in frame",
        "movement": "movement or action",
        "expression": "facial expression or emotion (for people)",
        "clothing": "clothing (for people)"
      }
    ]
  },
  "scene": {
    "location": "shooting location",
    "time_of_day": "time of day",
    "weather": "weather (for outdoor scenes)",
    "lighting": "lighting setup",
    "environment_details": "environmental details"
  },
  "visual_details": {
    "primary_action": "main action",
    "secondary_action": "secondary action",
    "duration": "scene duration",
    "resolution": "resolution (e.g., 4K, 1080p)",
    "aspect_ratio": "aspect ratio (e.g., 16:9, 9:16, 1:1)"
  },
  "cinematography": {
    "lighting": "detailed lighting setup",
    "color_grading": "color grading",
    "style": "shooting style",
    "tone": "tone or mood",
    "visual_effects": "visual effects (if needed)"
  },
  "audio": {
    "narration": "narration content",
    "voice_tone": "voice tone",
    "voice_style": "narration style",
    "ambience": "ambient sound",
    "sound_design": ["sound effect list"],
    "music": "BGM description"
  },
  "experience_elements": [
    "list of experience elements used"
  ],
  "color_palette": {
    "primary_colors": ["primary colors"],
    "secondary_colors": ["secondary colors"],
    "mood": "mood created by colors"
  },
  "visual_rules": {
    "prohibited_elements": ["list of prohibited elements"],
    "required_elements": ["list of required elements"],
    "brand_guidelines": "brand guideline compliance items"
  }
}
```

## シーン別プロファイル例

### 1. Problem Scene (0-5 seconds)
```json
{
  "shot": {
    "composition": "medium shot - person from chest up",
    "camera_motion": "slow zoom in (10% over 5 seconds)",
    "frame_rate": "24fps",
    "lens": "50mm",
    "depth_of_field": "f/2.8 - beautiful background blur",
    "film_grain": 0.03
  },
  "subject": {
    "entities": [
      {
        "role": "main character - troubled business person",
        "appearance": "30代後半の日本人男性、疲れた表情、やや乱れた髪",
        "position": "center frame, slightly right",
        "movement": "deep sigh → hold head → stare at screen",
        "expression": "confusion transitioning to resignation",
        "clothing": "紺色のスーツ、緩めたネクタイ、まくり上げた袖"
      },
      {
        "role": "prop - messy desk",
        "appearance": "pile of documents, monitor covered in sticky notes, 3 empty coffee cups",
        "position": "foreground to midground placement"
      }
    ]
  },
  "scene": {
    "location": "medium-sized company office, personal desk",
    "time_of_day": "late night - around 9:00 PM",
    "lighting": "desk lamp and PC monitor glow, ceiling lights off",
    "environment_details": "other desks empty, city lights visible through window"
  },
  "visual_details": {
    "primary_action": "holding head while looking at Excel error",
    "secondary_action": "frantically moving mouse, flipping through papers",
    "duration": "5 seconds",
    "resolution": "4K (3840x2160)",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "low contrast, blue-tinted lighting for fatigue",
    "color_grading": "cool tones, 20% desaturation",
    "style": "documentary realism",
    "tone": "heavy, stressful",
    "visual_effects": "subtle vignette at edges"
  },
  "audio": {
    "narration": "Still managing customers with Excel?",
    "voice_tone": "empathetic, slightly lower voice",
    "voice_style": "friendly",
    "ambience": "quiet office, clock ticking, PC fan hum",
    "sound_design": ["deep sigh", "keyboard typing sounds", "mouse clicks"],
    "music": "anxiety-inducing low drone"
  },
  "experience_elements": [
    "personal struggle",
    "relatable daily hardship"
  ],
  "color_palette": {
    "primary_colors": ["#1a237e", "#37474f"],
    "secondary_colors": ["#cfd8dc", "#ffeb3b"],
    "mood": "fatigue and stagnation"
  },
  "visual_rules": {
    "prohibited_elements": ["smiles", "bright colors", "organized environment"],
    "required_elements": ["Excel error display", "clock", "visual fatigue indicators"],
    "brand_guidelines": "no logo display (problem phase)"
  }
}
```

**AI Generation Prompt (Stable Diffusion/Midjourney):**
"Professional photograph of exhausted Japanese businessman in his late 30s at messy office desk at night, tired expression, navy suit with loosened tie, pile of documents, sticky notes on monitor, multiple empty coffee cups, desk lamp lighting, blue-tinted atmosphere, documentary style photography, medium shot from chest up, shallow depth of field f/2.8, 50mm lens, cinematic lighting, muted colors, vignette effect, high quality commercial photography, 4K resolution"

**Motion Generation Prompt (RunwayML/Pika Labs):**
"Static medium shot slowly zooming in 10% over 5 seconds. Subject: tired Japanese businessman sighs deeply, holds his head in hands, then looks up at computer screen with resignation. Subtle movements: mouse hand moving frantically, papers being flipped. Background: empty office at night. Camera: smooth, slow zoom on 50mm lens. Lighting: desk lamp and monitor glow creating blue-tinted atmosphere"

### 2. Solution Presentation Scene (15-23 seconds)
```json
{
  "shot": {
    "composition": "product demo screen close-up → medium shot including user",
    "camera_motion": "smooth horizontal pan, revealing UI elements sequentially",
    "frame_rate": "30fps - emphasizing smooth motion",
    "lens": "35mm equivalent",
    "depth_of_field": "f/5.6 - entire frame sharp",
    "film_grain": 0.01
  },
  "subject": {
    "entities": [
      {
        "role": "product interface",
        "appearance": "modern clean dashboard, blue and white theme",
        "visual_state": "data auto-updating animation",
        "key_features": "AI assistant, automation buttons, real-time graphs",
        "interactions": "hover for details, instant click response"
      },
      {
        "role": "operating hand",
        "appearance": "日本人のきれいなプロフェッショナルな手、腕時計着用",
        "movement": "confident precise movements, efficient gestures",
        "position": "operating from bottom right"
      }
    ]
  },
  "scene": {
    "location": "bright modern office, organized desk",
    "time_of_day": "daytime - natural light",
    "lighting": "bright even lighting, minimal shadows",
    "environment_details": "potted plants, organized documents, one coffee cup"
  },
  "visual_details": {
    "primary_action": "demonstrating 3 key features",
    "secondary_action": "background data auto-processing",
    "duration": "8 seconds",
    "resolution": "4K (3840x2160)",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "lighting": "bright hopeful illumination",
    "color_grading": "warm tones, 15% saturation boost",
    "style": "clean and professional",
    "tone": "efficient, innovative",
    "visual_effects": "UI element glow, smooth transitions"
  },
  "audio": {
    "narration": "AI automatically analyzes and creates optimal suggestions instantly",
    "voice_tone": "bright confident voice",
    "voice_style": "professional",
    "ambience": "lively office environment",
    "sound_design": ["click sounds", "success notification", "data processing sounds"],
    "music": "upbeat positive corporate BGM"
  },
  "experience_elements": [
    "real usage sensation",
    "surprise and discovery"
  ],
  "color_palette": {
    "primary_colors": ["#2196f3", "#ffffff"],
    "secondary_colors": ["#4caf50", "#ffc107"],
    "mood": "cleanliness and reliability"
  }
}
```

**AI Generation Prompt (UI Design/Figma to Image):**
"Modern SaaS dashboard interface, clean minimalist design, blue and white color scheme, AI assistant widget, automation buttons with glow effect, real-time data graphs updating, Japanese professional hand with watch interacting with interface, bright modern office background with natural lighting, potted plants visible, organized workspace, 4K resolution, commercial software photography style"

**Motion Generation Prompt (After Effects/RunwayML):**
"Camera: smooth horizontal pan from left to right across dashboard interface. Primary action: hand clicks through 3 key features - AI analysis button, automation toggle, real-time graph interaction. UI animations: data updates in real-time, buttons glow on hover, smooth transitions between screens. Duration: 8 seconds at 30fps. Background: subtle depth with modern office environment"

### 3. Proof of Results Scene (23-27 seconds)
```json
{
  "shot": {
    "composition": "animated graphics centered",
    "camera_motion": "static camera, movement within graphics",
    "frame_rate": "30fps",
    "lens": "not applicable (motion graphics)",
    "depth_of_field": "not applicable",
    "film_grain": 0
  },
  "subject": {
    "entities": [
      {
        "role": "statistical data visualization",
        "appearance": "3D graphs, pie charts, number counters",
        "animation": "count up from 0 to target values (2 seconds)",
        "key_metrics": "500 companies adopted, 98% satisfaction, 300% ROI"
      },
      {
        "role": "company logo collection",
        "appearance": "20 Fortune 500 company logos",
        "arrangement": "hexagonal honeycomb pattern",
        "animation": "sequential fade in, final unified glow"
      }
    ]
  },
  "visual_details": {
    "primary_action": "progressive number display and graph growth",
    "secondary_action": "background particle effects",
    "duration": "4 seconds",
    "resolution": "4K (3840x2160)",
    "aspect_ratio": "16:9"
  },
  "cinematography": {
    "style": "high-end motion graphics",
    "color_scheme": "brand colors base, gold accents",
    "animation_style": "smooth easing movements"
  },
  "audio": {
    "narration": "500 leading companies adopted, achieving remarkable 98% satisfaction",
    "voice_tone": "authoritative and trustworthy voice",
    "voice_style": "professional",
    "sound_design": ["counter sounds", "achievement chime", "sparkle effects"],
    "music": "orchestral epic BGM"
  }
}
```

**AI Generation Prompt (After Effects/Motion Graphics):**
"High-end corporate motion graphics animation, 3D statistical visualizations, animated bar graphs growing from 0 to 500, pie chart showing 98%, ROI counter animating to 300%, Fortune 500 company logos arranged in hexagonal honeycomb pattern, gold accent colors on brand blue background, particle effects, professional clean design, smooth easing animations, 4K resolution, premium quality"

**Audio Generation Prompt (Voice AI):**
"Professional male narrator, authoritative tone, clear enunciation, moderate pace, emphasis on numbers '500 companies' and '98% satisfaction', confident delivery, corporate presentation style, subtle enthusiasm without overselling"

## バリエーション管理

### フックバリエーション別プロファイル差分

#### Pattern A (Question Type) Additional Elements
```json
{
  "variation_specific": {
    "hook_type": "question_type",
    "adjustments": {
      "subject": {
        "expression": "questioning expression, furrowed brows",
        "additional_graphics": "large question mark appearing above head"
      },
      "audio": {
        "narration_style": "rising intonation like asking",
        "voice_pace": "slightly slower, creating thinking pauses"
      },
      "visual_effects": {
        "question_mark_animation": "rotate and fade in"
      }
    }
  }
}
```

**AI Generation Prompt:**
"Japanese person with confused questioning expression, furrowed eyebrows, looking up with curiosity, large animated question mark floating above head, professional setting, thoughtful pose"

#### Pattern B (Fear Appeal Type) Additional Elements
```json
{
  "variation_specific": {
    "hook_type": "fear_appeal_type",
    "adjustments": {
      "scene": {
        "lighting": "darker, red-tinted warning colors",
        "additional_props": "overdue notices on wall, red warning displays"
      },
      "audio": {
        "narration_style": "urgent fast-paced delivery",
        "additional_sounds": ["warning alarm", "heartbeat sound"]
      },
      "visual_effects": {
        "screen_glitch": "momentary screen distortion effect",
        "red_flash": "danger indicating red flash"
      }
    }
  }
}
```

**AI Generation Prompt:**
"Dark office scene with red warning lights, stressed Japanese person surrounded by overdue notices, alarm indicators flashing, dramatic red lighting, screen glitch effects, urgent atmosphere, cinematic tension"

## AIツール別の最適化

### Stable Diffusion / Midjourney
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

**Example Prompt Template:**
"[subject description - Japanese person if human], [action/pose], [environment], [lighting style], [camera angle], commercial photography, professional lighting, 4K quality, [specific style modifiers]"

### RunwayML / Pika Labs
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

**Motion Prompt Template:**
"[starting frame description]. Camera: [movement type] [speed]. Subject: [primary action description]. Duration: [X seconds]. Style: [smooth/dynamic/subtle]"

### ElevenLabs / Murf AI (Voice Generation)
```json
{
  "voice_generation": {
    "voice_id": "professional_male_01",
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

**Voice Direction Prompt:**
"Professional Japanese male voice, slightly concerned but knowledgeable tone, moderate pace with emphasis on key points, clear enunciation, conversational yet authoritative"

## 品質管理パラメータ

### Consistency Assurance
```json
{
  "consistency_rules": {
    "character_consistency": {
      "ethnicity": "Japanese",
      "reference_image": "base_character_001.png",
      "key_features": ["age: 35", "hair: short", "attire: business"],
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

### Error Checking
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

## 人物生成の基本ガイドライン

### デフォルト設定
1. **人物の国籍**
   - 特に指定がない限り、人物は日本人として生成
   - 日本のビジネスシーンに適した外見と服装
   - 国際的な設定が必要な場合は明示的に指定

2. **外見の特徴**
   - 年齢：ターゲット層に合わせて設定（20代後半〜40代が一般的）
   - 服装：日本のビジネスカジュアルまたはフォーマル
   - 表情：シーンに応じた自然な日本人の表情

3. **プロンプトでの指定方法**
   - 必ず "Japanese" を人物描写に含める
   - 例："Japanese businessman", "Japanese office worker", "Japanese professional"
   - 具体的な年齢層も日本語表記可（例："30代後半の日本人男性"）

4. **音声生成での配慮**
   - ナレーション音声も日本人話者を基本とする
   - 自然な日本語のイントネーションとペース
   - 必要に応じて方言や話し方の特徴を指定

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