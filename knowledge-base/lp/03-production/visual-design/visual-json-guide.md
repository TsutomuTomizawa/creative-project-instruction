# ビジュアル生成用JSON Context Profileガイド

## 📌 このファイルの使い方
ビジュアル（画像・動画）を生成する際の詳細な指示書を作成するためのガイドです。
`!visual [用途]`で適切なテンプレートを呼び出せます。

## クイックテンプレート

### ヒーロー画像
```json
{
  "visual_id": "hero-[業界]-001",
  "purpose": "ファーストビューで価値を伝える",
  "quick_spec": {
    "mood": "明るく前向き",
    "focus": "人物＋製品",
    "color": "ブランドカラー中心"
  }
}
```

### 商品画像
```json
{
  "visual_id": "product-[商品名]-001",
  "purpose": "商品の魅力を最大限に表現",
  "quick_spec": {
    "style": "クリーンな背景",
    "angle": "正面・側面・使用時の3枚",
    "lighting": "明るく均一"
  }
}
```

---

## 1. 詳細仕様テンプレート

### 1-1. ビジネス系ヒーロー画像
```json
{
  "visual_id": "hero-business-001",
  "purpose": "SaaSツールの効率性と使いやすさを表現",
  "location": "LPファーストビュー",
  
  "composition": {
    "layout": "左テキスト、右ビジュアル想定",
    "focal_point": "満足そうに作業する人物の表情",
    "aspect_ratio": "16:9",
    "safe_area": "中央80%に重要要素を配置"
  },
  
  "subject": {
    "main": {
      "person": {
        "age": "30-40代",
        "gender": "多様性を考慮",
        "expression": "自信に満ちた自然な笑顔",
        "clothing": "ビジネスカジュアル",
        "pose": "PCに向かって作業中"
      },
      "environment": {
        "setting": "モダンなオフィス",
        "desk": "整理整頓された状態",
        "props": "ノートPC、コーヒー、観葉植物"
      }
    }
  },
  
  "visual_style": {
    "photography": "ナチュラルでリアル",
    "lighting": "窓からの自然光（左から）",
    "color_tone": "明るく爽やか",
    "depth": "背景は適度にぼかす（f/4.0）"
  },
  
  "color_palette": {
    "primary": "#0066CC（ブランドカラー）",
    "secondary": "#FFFFFF",
    "accent": "#00AA55（成功・ポジティブ）",
    "mood": "信頼感と革新性"
  },
  
  "technical": {
    "dimensions": "1920x1080（デスクトップ）",
    "mobile_version": "1080x1350（別途作成）",
    "file_format": "WebP（フォールバックJPEG）",
    "file_size": "200KB以下",
    "alt_text": "効率的に仕事を進める会社員"
  },
  
  "do_not": [
    "暗い表情や疲れた様子",
    "散らかったデスク",
    "古いオフィス環境",
    "ステレオタイプな表現"
  ]
}
```

### 1-2. EC商品ライフスタイル画像
```json
{
  "visual_id": "lifestyle-product-001",
  "purpose": "商品のある理想的な生活シーンを演出",
  "location": "商品説明セクション",
  
  "composition": {
    "layout": "商品を自然に配置したシーン",
    "focal_point": "使用中の商品と使用者の表情",
    "aspect_ratio": "1:1（Instagram）, 16:9（Web）",
    "rule_of_thirds": "商品を交点に配置"
  },
  
  "subject": {
    "product": {
      "placement": "自然に使用されている状態",
      "condition": "新品で美しい状態",
      "branding": "ロゴが適度に見える"
    },
    "lifestyle": {
      "scene": "朝の身支度シーン",
      "mood": "優雅で落ち着いた時間",
      "props": "高級感のある小物"
    }
  },
  
  "visual_style": {
    "photography": "ライフスタイル写真",
    "lighting": "柔らかい朝の光",
    "texture": "素材の質感を強調",
    "atmosphere": "憧れと親近感のバランス"
  }
}
```

---

## 2. 用途別ビジュアル要件

### 2-1. 信頼性訴求（お客様の声）
```json
{
  "visual_id": "testimonial-portrait-001",
  "requirements": {
    "authenticity": "実在感のある自然な表情",
    "diversity": "様々な年齢・性別・職業",
    "quality": "プロフェッショナルな品質",
    "background": "シンプルで邪魔にならない"
  },
  "specifications": {
    "crop": "バストアップ",
    "expression": "信頼できる穏やかな笑顔",
    "eye_contact": "カメラ目線",
    "lighting": "顔を明るく照らす"
  }
}
```

### 2-2. 商品機能説明
```json
{
  "visual_id": "feature-diagram-001",
  "requirements": {
    "clarity": "一目で理解できる",
    "hierarchy": "重要な要素を強調",
    "consistency": "アイコンスタイル統一",
    "simplicity": "必要最小限の要素"
  }
}
```

---

## 3. 動画仕様テンプレート

### 3-1. 商品紹介動画（15秒）
```json
{
  "video_id": "product-intro-15s",
  "duration": "15秒",
  "platform": "Instagram/Web広告",
  
  "shot_list": [
    {
      "time": "0-3秒",
      "content": "問題提起（困っている様子）",
      "camera": "クローズアップ",
      "transition": "カット"
    },
    {
      "time": "4-10秒",
      "content": "商品使用シーン",
      "camera": "様々なアングル",
      "text_overlay": "3つの特徴を表示"
    },
    {
      "time": "11-15秒",
      "content": "満足な結果＋CTA",
      "camera": "ワイドショット",
      "cta": "詳しくはこちら"
    }
  ],
  
  "visual_style": {
    "pacing": "テンポよく",
    "color_grading": "明るく鮮やか",
    "music": "アップビート"
  },
  
  "technical": {
    "resolution": "1080x1080（正方形）",
    "fps": "30fps",
    "bitrate": "5Mbps",
    "captions": "必須（音声なし視聴対応）"
  }
}
```

---

## 4. ビジュアル最適化チェックリスト

### 画像最適化
```
□ 適切なフォーマット（WebP > JPEG > PNG）
□ 適切なサイズ（表示サイズの2倍まで）
□ 圧縮率の調整（品質85-90%）
□ 遅延読み込みの設定
□ altテキストの設定
□ レスポンシブ画像の用意
```

### 動画最適化
```
□ 適切なコーデック（H.264/H.265）
□ 適切なビットレート
□ サムネイル画像の設定
□ 字幕ファイルの用意
□ 複数の品質オプション
□ プリロード設定
```

---

## 5. 業界別ビジュアルガイドライン

### SaaS/B2B
- クリーンでプロフェッショナル
- 実際の使用画面を含める
- 多様性のある人物表現
- 青・緑系の信頼感ある配色

### EC/D2C
- 商品の質感を重視
- ライフスタイル提案
- 複数アングルで撮影
- ブランドカラーの統一

### 教育
- 親しみやすい雰囲気
- 成長・変化を表現
- 実際の学習シーン
- 明るく希望的な配色

---

## 6. NGパターン

### 避けるべき表現
```
人物:
- ステレオタイプな配役
- 不自然なポーズ
- 過度な笑顔

構図:
- 詰め込みすぎ
- 重要要素が端
- バランスの悪さ

色彩:
- ブランドカラーと不一致
- 彩度が高すぎる
- コントラスト不足
```

---

## 7. 実装時の連携

### デザイナーへの伝達
1. このJSONをそのまま共有
2. 参考画像があれば追加
3. ブランドガイドライン添付
4. 納期と用途を明確化

### 生成AIを使用する場合
1. JSONから要素を抽出
2. プロンプトに変換
3. スタイル指定を追加
4. 複数バリエーション生成

---

## 8. 品質確認基準

### 必須チェック項目
```
□ 目的に合致しているか
□ ターゲットに適切か
□ ブランドらしさがあるか
□ 技術仕様を満たしているか
□ 法的問題はないか
□ 多様性に配慮されているか
```

### 改善ポイント
```
□ より感情に訴えられるか
□ より明確に伝わるか
□ より記憶に残るか
□ より行動を促せるか
```